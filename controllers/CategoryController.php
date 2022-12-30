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
            Category::addCategory($_POST['name'], $_FILES['file']['tmp_name']);
            return $this->redirect('/category/index');
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
            return $this->redirect('/category/index');
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
        if ($id <= 0)
            return $this->error(403);
        $category = Category::getCategoryById($id);
        return $this->render(null, [
            'category' => $category
        ]);
    }
}