<?php

namespace controllers;

use core\Controller;
use core\Core;
use models\Category;

class CategoryController extends Controller
{
    public function indexAction()
    {
        $rows = Category::getCategories();
        return $this->render(
            null,
            [
                'rows' => $rows
            ]
        );
    }

    public function addAction()
    {
        if(Core::getInstance()->requestMethod === 'POST'){
            Category::addCategory($_POST['name'], $_FILES['file']['tmp_name']);
            $this->redirect('/category/index');
        }
        return $this->render();
    }
}