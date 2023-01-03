<?php

namespace controllers;

use core\Core;
use core\Controller;
use models\Category;
use models\CategoryList;
use models\Product;
use models\Publisher;

class ProductController extends Controller
{
    public function indexAction()
    {
        $rows = Product::getProducts();
        return $this->render(null, [
            'rows' => $rows
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
            if ($_POST['count'] <= 0)
                $errors['count'] = 'Кількість некоректна';
            if (empty($errors)) {
                $id = Product::addProduct($_POST);
                if (!empty($_POST['categories_id']))
                    CategoryList::addCategoryList($id, $_POST['categories_id']);
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
        // if ($product === null)
        //     return $this->error(404);
        return $this->render(null, [
            'product' => $product
        ]);
    }
}