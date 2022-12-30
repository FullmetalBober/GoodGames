<?php

namespace controllers;

use core\Controller;

class MainController extends Controller
{
    public function indexAction()
    {
        return $this->render();
    }

    public function errorAction($code)
    {
        switch ($code) {
            case 404:
                return $this->render('views/main/error-404.php');
            case 403:
                return $this->render('views/main/error-403.php');
        }
    }
}