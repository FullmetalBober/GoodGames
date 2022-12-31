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
        $rows = Category::getCategories();
        $viewPath = null;
        if (User::isAdmin())
            $viewPath = "views/category/index-admin.php";
        return $this->render(
            $viewPath,
            [
                'rows' => $rows
            ]
        );
    }

    public function addAction()
    {
        if (!User::isAdmin())
            return $this->error(403);
        if (Core::getInstance()->requestMethod === 'POST') {
            $_POST['name'] = trim($_POST['name']);

            $errors = [];
            if (empty($_POST['name']))
                $errors['name'] = 'Назва категорії не може бути порожньою';

            if (empty($errors)) {
                Category::addCategory($_POST['name'], $_FILES['file']['tmp_name']);
                 $this->redirect('/category/index');
            } else {
                $model = $_POST;
                return $this->render(null, [
                    'errors' => $errors,
                    'model' => $model
                ]);
            }

        }
        return $this->render();
    }

    public function deleteAction($params)
    {
        $id = intval($params[0]);
        $yes = isset($params[1]) ? boolval($params[1] === 'yes') : false;
        if (!User::isAdmin())
            return $this->error(403);
        if ($id <= 0)
            return $this->error(403);
        $category = Category::getCategoryById($id);
        if ($yes) {
            $filePath = 'files/category' . $category['photo'];
            if (file_exists($filePath))
                unlink($filePath);
            Category::deleteCategory($id);
             $this->redirect('/category/index');
        }
        return $this->render(null, [
            'category' => $category
        ]);
    }

    public function editAction($params)
    {
        $id = intval($params[0]);
        if (!User::isAdmin())
            return $this->error(403);
        if ($id > 0) {
            $category = Category::getCategoryById($id);
            if (Core::getInstance()->requestMethod === 'POST') {

                $errors = [];
                if (empty($_POST['name']))
                    $errors['name'] = 'Назва категорії не може бути порожньою';

                if (empty($errors)) {
                    Category::updateCategory($id, $_POST['name']);
                    if (!empty($_FILES['file']['tmp_name']))
                        Category::changePhoto($id, $_FILES['file']['tmp_name']);
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
                'category' => $category
            ]);
        } else
            return $this->error(403);
    }
}