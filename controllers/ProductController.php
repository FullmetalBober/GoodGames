<?php

namespace controllers;

use core\Core;
use core\Controller;
use models\Product;
use models\Category;

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
        $category_id = intval($params[0]??null);
        $categories = Category::getCategories();
        if (Core::getInstance()->requestMethod === 'POST') {

            $errors = [];
            if (empty($_POST['name']))
                $errors['name'] = 'Назва не може бути порожньою';
            if (empty($_POST['category_id']))
                $errors['category_id'] = 'Категорія не може бути порожньою';
            if ($_POST['price'] <= 0)
                $errors['price'] = 'Ціна некоректна';
            if ($_POST['count'] <= 0)
                $errors['count'] = 'Кількість некоректна';
            if (empty($errors)) {
                Product::addProduct($_POST);
                $this->redirect('/product');
            } else {
                $model = $_POST;
                return $this->render(null, [
                    'errors' => $errors,
                    'model' => $model,
                    'categories' => $categories,
                    'category_id' => $category_id
                ]);
            }
        }

        return $this->render(null, [
            'categories' => $categories,
            'category_id' => $category_id
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