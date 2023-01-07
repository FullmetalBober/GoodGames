<?php

namespace controllers;

use core\Core;
use core\Controller;
use models\AdditionalPhotosProduct;
use models\Category;
use models\CategoryList;
use models\Product;
use models\Publisher;
use models\User;

class ProductController extends Controller
{
    public function indexAction($params)
    {
        $rows = Product::getProducts();
        $rows = array_reverse($rows);
        $publishers = Publisher::getPublishers();
        $categories = Category::getCategories();
        $categoryList = CategoryList::getCategoriesList();

        $page = 0;
        $count = 6;
        if (Core::getInstance()->requestMethod === 'GET') {

            if (!empty($_GET['sortBy'])) {
                if ($_GET['sortBy'] === 'name') {
                    usort($rows, function ($a, $b) {
                        return strcmp($a['name'], $b['name']);
                    });
                }
                if ($_GET['sortBy'] === 'price') {
                    usort($rows, function ($a, $b) {
                        return $a['price'] - $b['price'];
                    });
                }
            }

            if (!empty($_GET['name']))
                $rows = array_filter($rows, function ($row) {
                    if (strpos($row['name'], $_GET['name']) !== false)
                        return $row;
                });

            if (!empty($_GET['publisher_id']))
                $rows = array_filter($rows, function ($row) {
                    if ($row['publisher_id'] == $_GET['publisher_id'])
                        return $row;
                });

            if (!empty($_GET['categories_id'])) {
                $rows = array_filter($rows, function ($row) {
                    $array1 = $_GET['categories_id'];
                    $array2 = CategoryList::getCategoryListByProductId($row['id']);
                    if (array_intersect($array1, $array2) == $array1)
                        return $row;
                });
            }

            if (!empty($_GET['price']) && $_GET['price'] <= 480) {
                $rows = array_filter($rows, function ($row) {
                    if ($row['price'] <= $_GET['price'])
                        return $row;
                });
            }
            if (!empty($_GET['page']))
                $page = $_GET['page'] - 1;



            $model = $_GET;
        }
        $model['page'] = $page + 1;
        $model['pageCount'] = ceil(count($rows) / $count);
        $rows = array_slice($rows, $page * $count, $count);
        return $this->render(null, [
            'rows' => $rows,
            'publishers' => $publishers,
            'categories' => $categories,
            'model' => $model
        ]);
    }

    public function addAction($params)
    {
        $publisher_id = intval($params[0] ?? null);
        $publishers = Publisher::getPublishers();
        $categories = Category::getCategories();
        if (Core::getInstance()->requestMethod === 'POST') {
            $errors = [];
            if (empty($_POST['name']))
                $errors['name'] = 'Назва не може бути порожньою';
            if (empty($_POST['publisher_id']))
                $errors['publisher_id'] = 'Категорія не може бути порожньою';
            if ($_POST['price'] <= 0)
                $errors['price'] = 'Ціна некоректна';
            if (empty($errors)) {
                $_POST['photo'] = $_FILES['file']['tmp_name'];
                $id = Product::addProduct($_POST);
                if (!empty($_POST['categories_id']))
                    CategoryList::addCategoryList($id, $_POST['categories_id']);
                if (!empty($_FILES['additionalFiles']['tmp_name']))
                    AdditionalPhotosProduct::addAdditionalPhotos($id, $_FILES['additionalFiles']['tmp_name']);
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

    public function viewAction($params)
    {
        $id = intval($params[0]);
        $product = Product::getProductById($id);
        if ($product === null)
            return $this->error(404);
        $product['additionalPhotos'] = AdditionalPhotosProduct::getAdditionalPhotos($id);
        // echo '<pre>';
        // var_dump($product['additionalPhotos']);
        // die;
        return $this->render(null, [
            'product' => $product
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
            $errors = [];
            if (empty($_POST['name']))
                $errors['name'] = 'Назва не може бути порожньою';
            // if (empty($_POST['publisher_id']))
            //     $errors['publisher_id'] = 'Видавець не може бути порожншм';
            if ($_POST['price'] <= 0)
                $errors['price'] = 'Ціна некоректна';
            if (empty($errors)) {
                if (!empty($_FILES['file']['tmp_name']))
                    $_POST['photo'] = $_FILES['file']['tmp_name'];
                Product::updateProduct($id, $_POST);
                CategoryList::updateCategoryList($id, $_POST['categories_id']);
                if (!empty($_FILES['additionalFiles']['tmp_name'][0]))
                    AdditionalPhotosProduct::updateAdditionalPhotos($id, $_FILES['additionalFiles']['tmp_name']);
                $this->redirect('/product');
            } else {
                $model = $_POST;
                return $this->render(null, [
                    'errors' => $errors,
                    'model' => $model,
                    'publishers' => $publishers,
                    'categories' => $categories
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
        if ($id <= 0)
            return $this->error(403);
        $product = Product::getProductById($id);
        if ($yes) {
            // $filePath = 'files/product' . $product['photo'];
            // if (file_exists($filePath))
            //     unlink($filePath);
            Product::deleteProduct($id);
            $this->redirect('/product/index');
        }
        return $this->render(null, [
            'product' => $product
        ]);
    }
}