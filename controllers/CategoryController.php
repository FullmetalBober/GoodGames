<?php

namespace controllers;

use core\Controller;
use core\Core;
use models\Category;


class CategoryController extends Controller
{
    public function indexAction()
    {
        $categories = Category::getCategoriesWithCount();
        return $this->render(null, [
            'categories' => $categories
        ]);
    }

    public function addAction()
    {
        if (Core::getInstance()->requestMethod === 'POST') {
            $errors = [];
            if (empty($_POST['name']))
                $errors['name'] = 'Назва не може бути порожньою';
            if (Category::checkCategoryName($_POST['name']))
                $errors['name'] = 'Категорія з такою назвою вже існує';
            if (empty($errors)) {
                Category::addCategory($_POST['name']);
                $this->redirect('/category');
            } else {
                $model = $_POST;
                return $this->render(null, [
                    'errors' => $errors,
                    'model' => $model,
                ]);
            }
        }

        return $this->render();
    }

}