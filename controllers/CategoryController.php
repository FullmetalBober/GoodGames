<?php

namespace controllers;

use core\Controller;
use core\Core;
use models\Category;
use models\User;


class CategoryController extends Controller
{
    public function indexAction()
    {
        if (!User::isAdmin())
            return $this->error(403);
        $categories = Category::getCategoriesWithCount();
        return $this->render(null, [
            'categories' => $categories
        ]);
    }

    public function addAction()
    {
        if (!User::isAdmin())
            return $this->error(403);
        if (Core::getInstance()->requestMethod === 'POST') {
            $errors = [];
            if (empty($_POST['name']))
                $errors['name'] = 'Назва не може бути порожньою';
            else if (Category::checkCategoryName($_POST['name']))
                $errors['name'] = 'Категорія з такою назвою вже існує';
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

    public function editAction($params)
    {
        $id = intval($params[0]);
        if (!User::isAdmin())
            return $this->error(403);
        $category = Category::getCategoryById($id);
        if (empty($category))
            return $this->error(404);
        $model['name'] = $category['name'];

        if (Core::getInstance()->requestMethod === 'POST') {
            $model = $_POST;
            $errors = [];
            if (empty($_POST['name']))
                $errors['name'] = 'Назва не може бути порожньою';
            else if (Category::checkCategoryName($_POST['name']) && $_POST['name'] !== $category['name'])
                $errors['name'] = 'Категорія з такою назвою вже існує';
            if (empty($errors)) {
                Category::updateCategory($id, $_POST['name']);
                $this->redirect('/category/index');
            } else {
                return $this->render(null, [
                    'errors' => $errors,
                    'model' => $_POST,
                    'category' => $category
                ]);
            }
        }
        return $this->render(null, [
            'category' => $category,
            'model' => $model
        ]);
    }

    public function deleteAction($params)
    {
        $id = intval($params[0]);
        $yes = isset($params[1]) ? boolval($params[1] === 'yes') : false;
        if (!User::isAdmin())
            return $this->error(403);

        $category = Category::getCategoryById($id);
        if (empty($category))
            return $this->error(404);
        if ($yes) {
            Category::deleteCategory($id);
            $this->redirect('/category/index');
        }
        return $this->render(null, [
            'category' => $category
        ]);
    }

}