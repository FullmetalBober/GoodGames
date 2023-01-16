<?php

namespace controllers;

use core\Core;
use core\Controller;
use core\Utils;
use models\AdditionalPhotosProduct;
use models\Basket;
use models\Category;
use models\CategoryList;
use models\Comment;
use models\Product;
use models\Publisher;
use models\User;

class ProductController extends Controller
{
    public function indexAction()
    {
        if(User::isAdmin())
            $rows = Product::getProducts();
        else
            $rows = Product::getVisibleProducts();
        $rows = Utils::sortByDate($rows);
        $publishers = Publisher::getPublishers();
        $categories = Category::getCategories();

        $page = 0;
        $count = 12;
        if (Core::getInstance()->requestMethod === 'GET') {
            $_GET = Utils::trimArray($_GET);

            $rows = Utils::sortAndFilterProductArray($rows, $_GET);

            if (!empty($_GET['page']))
                $page = $_GET['page'] - 1;

            $model = $_GET;
        }
        $model['page'] = $page + 1;
        $model['pageCount'] = ceil(count($rows) / $count);
        $rows = array_slice($rows, $page * $count, $count);
        return $this->render(null, [
            'rows' => $rows,
            'categories' => $categories,
            'model' => $model
        ]);
    }

    public function addAction($params)
    {
        if (!User::isAdmin())
            return $this->error(403);
        $publisher_id = intval($params[0] ?? null);
        $publishers = Publisher::getPublishers();
        $categories = Category::getCategories();
        if (Core::getInstance()->requestMethod === 'POST') {
            $_POST = Utils::trimArray($_POST);
            if (!isset($_POST['price']))
                $_POST['price'] = 0;
            $errors = Product::errorValidate($_POST);
            if (empty($errors)) {
                if (!empty($_FILES['file']['tmp_name'])) {
                    $_POST['photo']['tmp_name'] = $_FILES['file']['tmp_name'];
                    $_POST['photo']['name'] = $_FILES['file']['name'];
                }
                $id = Product::addProduct($_POST);
                if (!empty($_POST['categories_id']))
                    CategoryList::addCategoryList($id, $_POST['categories_id']);
                if (!empty($_FILES['additionalFiles']['tmp_name'])) {
                    $photosArray = Utils::getFilesArray($_FILES['additionalFiles']);
                    AdditionalPhotosProduct::addAdditionalPhotos($id, $photosArray);
                }
                $this->redirect('/product');
            } else {
                $model = $_POST;
                return $this->render(null, [
                    'errors' => $errors,
                    'model' => $model,
                    'publishers' => $publishers,
                    'publisher_id' => $publisher_id,
                    'categories' => $categories
                ]);
            }
        }

        return $this->render(null, [
            'publishers' => $publishers,
            'publisher_id' => $publisher_id,
            'categories' => $categories
        ]);
    }

    public function editAction($params)
    {
        $id = intval($params[0]);
        if (!User::isAdmin())
            return $this->error(403);
        $product = Product::getProductById($id);
        if (empty($product))
            return $this->error(404);
        $model = $product;
        $model['categories_id'] = CategoryList::getCategoryListByProductId($id);
        $publishers = Publisher::getPublishers();
        $categories = Category::getCategories();
        $product['additionalPhotos'] = [];
        $product['additionalPhotos'] = AdditionalPhotosProduct::getAdditionalPhotos($id);

        if (Core::getInstance()->requestMethod === 'POST') {
            $_POST = Utils::trimArray($_POST);
            if (!isset($_POST['price']))
                $_POST['price'] = 0;
            $errors = Product::errorValidate($_POST, $id);
            if (empty($errors)) {
                if (!empty($_FILES['file']['tmp_name'])) {
                    $_POST['photo']['tmp_name'] = $_FILES['file']['tmp_name'];
                    $_POST['photo']['name'] = $_FILES['file']['name'];
                }
                Product::updateProduct($id, $_POST);
                CategoryList::updateCategoryList($id, $_POST['categories_id']);
                if (!empty($_FILES['additionalFiles']['tmp_name'][0])) {
                    $photosArray = Utils::getFilesArray($_FILES['additionalFiles']);
                    AdditionalPhotosProduct::updateAdditionalPhotos($id, $photosArray);
                }
                $this->redirect('/product');
            } else {
                $model = $_POST;
                return $this->render(null, [
                    'errors' => $errors,
                    'model' => $model,
                    'publishers' => $publishers,
                    'categories' => $categories,
                ]);
            }
        }

        return $this->render(null, [
            'product' => $product,
            'publishers' => $publishers,
            'categories' => $categories,
            'model' => $model
        ]);
    }

    public function deleteAction($params)
    {
        $id = intval($params[0]);
        $yes = isset($params[1]) ? boolval($params[1] === 'yes') : false;
        if (!User::isAdmin())
            return $this->error(403);
        $product = Product::getProductById($id);
        if (empty($product))
            return $this->error(404);
        if ($yes) {
            Product::deleteProduct($id);
            $this->redirect('/product/index');
        }
        return $this->render(null, [
            'product' => $product
        ]);
    }

    public function viewAction($params)
    {
        $product_id = intval($params[0]);
        $product = Product::getProductById($product_id);
        if ($product === null)
            return $this->error(404);
        $checkUser = User::isUserAuthentificated();
        if ($checkUser) {
            $user = User::getCurrentAuthentificatedUser();
            $user_id = $user['id'];
            $userComment = Comment::getCommentByUserId($product_id, $user_id);
            if (!empty($userComment))
                $userComment = $userComment[0];
        }
        if (Core::getInstance()->requestMethod === 'POST') {
            $_POST = Utils::trimArray($_POST);
            if (!empty($_POST['toBasket'])) {
                Basket::addProduct($product_id);
                return $this->redirect('/basket');
            } else if ($checkUser && !empty($_POST['sendComment']) && !empty($_POST['comment'])) {
                if (empty($_POST['rating']))
                    $_POST['rating'] = 0;
                if (empty($userComment))
                    Comment::addComment($product_id, $_POST);
                else
                    Comment::updateComment($product_id, $_POST);
            } else if ($checkUser && !empty($_POST['deleteComment']) && (!empty($userComment) && ($userComment['id'] == $_POST['deleteComment'] || User::isAdmin())))
                Comment::deleteComment($_POST['deleteComment']);
        }
        $comments = Comment::getComments($product_id);
        $comments = Utils::sortByDate($comments);
        $product['additionalPhotos'] = AdditionalPhotosProduct::getAdditionalPhotos($product_id);
        if (!empty($product['publisher_id']))
            $product['publisher'] = Publisher::getPublisherById($product['publisher_id'])['name'];
        else
            $product['publisher'] = 'Невідомо';
        $product['categories'] = CategoryList::getCategoryesNamesByProductId($product_id);
        $product['rating'] = round(Comment::getRating($product_id, $comments), 0);
        if ($checkUser) {
            if (!empty($userComment))
                $comments = Utils::moveItemToFirstPosition($comments, $userComment);
        }
        return $this->render(null, [
            'product' => $product,
            'comments' => $comments,
            'user' => $user ?? null,
        ]);
    }
}