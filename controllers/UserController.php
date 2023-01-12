<?php

namespace controllers;

use core\Controller;
use core\Core;
use core\Utils;
use models\Basket;
use models\Library;
use models\User;

class UserController extends Controller
{
    public function indexAction($params)
    {
        $user_id = intval($params[0] ?? null);
        $user = User::getUserById($user_id);
        if ($user === null)
            return $this->error(404);
        $library = Library::getProductsInLibrary($user_id);
        return $this->render(null, [
            'user' => $user,
            'library' => $library
        ]);
    }

    public function registerAction()
    {
        if (User::isUserAuthentificated())
            $this->redirect('/');
        if (Core::getInstance()->requestMethod == 'POST') {
            $_POST = array_map('trim', $_POST);
            $errors = [];
            if (!filter_var($_POST['login'], FILTER_VALIDATE_EMAIL))
                $errors['login'] = 'Електронна пошта не введена';

            if (User::isEmailExists($_POST['login']))
                $errors['login'] = 'Така електронна пошта вже існує';

            if (empty($_POST['password']))
                $errors['password'] = 'Пароль не введений';

            if ($_POST['password'] != $_POST['password2'])
                $errors['password'] = 'Паролі не співпадають';

            if (count($errors) > 0) {
                $model = $_POST;
                return $this->render(null, [
                    'errors' => $errors,
                    'model' => $model
                ]);
            } else {
                if (!empty($_FILES['file']['tmp_name'])) {
                    $_POST['photo']['tmp_name'] = $_FILES['file']['tmp_name'];
                    $_POST['photo']['name'] = $_FILES['file']['name'];
                }
                User::addUser($_POST['login'], $_POST['password'], $_POST['name'], $_POST['photo']);
                return $this->redirect('/user/login');
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

    public function accessAction()
    {
        if (!User::isSuperAdmin())
            return $this->error(403);
        if (Core::getInstance()->requestMethod == 'POST') {
            if (!empty($_POST['setAdmin']))
                User::updateUser($_POST['setAdmin'], ['access_level' => User::$accessLevels['admin']]);

            if (!empty($_POST['setUser']))
                User::updateUser($_POST['setUser'], ['access_level' => User::$accessLevels['user']]);

            if (!empty($_POST['delete']))
                return $this->redirect('/user/delete/' . $_POST['delete']);

        }
        $users = User::getAllUsers();
        $users = Utils::deleteItemFromArray($users, User::getCurrentAuthentificatedUser());
        $users = Utils::sortByDate($users);
        return $this->render(
            null,
            [
                'users' => $users
            ]
        );
    }

    public function editAction($params)
    {
        $id = intval($params[0] ?? null);
        $user = User::getUserById($id);
        if (empty($user))
            return $this->error(404);
        if (!User::isUserAuthentificated())
            $this->redirect('/user/login');
        if (User::getCurrentAuthentificatedUser()['id'] != $id && !User::isSuperAdmin())
            return $this->error(403);
        if (Core::getInstance()->requestMethod == 'POST') {
            $_POST = array_map('trim', $_POST);
            $errors = [];
            if (!filter_var($_POST['login'], FILTER_VALIDATE_EMAIL))
                $errors['login'] = 'Електронна пошта не введена';

            if (User::isEmailExists($_POST['login']) && $_POST['login'] != $user['login'])
                $errors['login'] = 'Така електронна пошта вже існує';

            if ($_POST['password'] != $_POST['password2'])
                $errors['password'] = 'Паролі не співпадають';

            if (count($errors) > 0) {
                $model = $_POST;
                return $this->render(null, [
                    'errors' => $errors,
                    'model' => $model,
                    'user' => $user
                ]);
            } else {
                if (!empty($_FILES['file']['tmp_name'])) {
                    $_POST['photo']['tmp_name'] = $_FILES['file']['tmp_name'];
                    $_POST['photo']['name'] = $_FILES['file']['name'];
                }
                if (empty($_POST['password']))
                    unset($_POST['password']);
                User::updateUser($id, $_POST);
                return $this->redirect("/user/index/$id");
            }
        } else
            return $this->render(
                null,
                [
                    'model' => Utils::deleteItemFromArray($user, $user['password'])
                ]
            );
    }

    public function deleteAction($params)
    {
        $id = intval($params[0]);
        $yes = isset($params[1]) ? boolval($params[1] === 'yes') : false;
        $currentUser = User::getCurrentAuthentificatedUser();
        $user = User::getUserById($id);
        if (empty($user))
            return $this->error(404);
        if ($user['access_level'] == User::$accessLevels['superAdmin'] || (!User::isSuperAdmin() && $currentUser['id'] != $id))
            return $this->error(403);
        if ($yes) {
            User::deleteUser($id);
            $this->redirect('/user/access');
        }
        return $this->render(null, [
            'user' => $user
        ]);
    }
}