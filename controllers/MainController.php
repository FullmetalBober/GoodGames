<?php

namespace controllers;

class MainController
{
    public function indexAction()
    {
        echo 'mainIndexAction';
    }

    public function errorAction($code)
    {
        switch ($code) {
            case 404:
                echo 'Error 404';
                break;
            default:
                echo 'error';
        }
    }
}
