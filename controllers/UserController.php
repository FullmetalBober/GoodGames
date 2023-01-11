<?php

namespace controllers;

use core\Controller;
use core\Core;
use models\Basket;
use models\User;

class UserController extends Controller
{
    public function indexAction()
    {
    }

    public function registerAction()
    {
        if (User::isUserAuthentificated())
            $this->redirect('/');
        if (Core::getInstance()->requestMethod == 'POST') {
            $_POST = array_map('trim', $_POST);
            $errors = [];
            if (!filter_var($_POST['login'], FILTER_VALIDATE_EMAIL))
                $errors['login'] = 'Помилка при введні електронної пошти';

            if (User::isEmailExists($_POST['login']))
                $errors['login'] = 'Така електронна пошта вже існує';

            if ($_POST['password'] != $_POST['password2'])
                $errors['password'] = 'Паролі не співпадають';

            if (count($errors) > 0) {
                $model = $_POST;
                return $this->render(null, [
                    'errors' => $errors,
                    'model' => $model
                ]);
            } else {
                User::addUser($_POST['login'], $_POST['password'], $_POST['name']);
                return $this->renderView('login');
            }
        } else
            return $this->render();
    }

    public function loginAction()
    {
        if (User::isUserAuthentificated())
            $this->redirect('/');
        if (Core::getInstance()->requestMethod == 'POST') {
            $_POST = array_map('trim', $_POST);
            $user = User::getUserByLoginAndPassword($_POST['login'] ?? null, $_POST['password'] ?? null);
            $error = null;
            if (empty($user))
                $error = 'Невірний логін або пароль';
            else {
                User::authentificateUser($user);
                Basket::addProductFromSessionToDB();
                $this->redirect('/');
            }
        }
        return $this->render(null, [
            'error' => $error ?? null
        ]);
    }

    public function logoutAction()
    {
        User::logoutUser();
        $this->redirect('/');
    }
}