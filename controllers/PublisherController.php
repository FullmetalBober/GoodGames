<?php

namespace controllers;

use core\Controller;
use core\Core;
use core\Utils;
use models\Category;
use models\CategoryList;
use models\Publisher;
use models\Product;
use models\User;

class PublisherController extends Controller
{
    public function indexAction()
    {
        $rows = Publisher::getPublishers();
        $viewPath = null;

        $page = 0;
        $count = 20;

        if (Core::getInstance()->requestMethod === 'GET') {
            $_GET = Utils::trimArray($_GET);
            if (!empty($_GET['sortBy'])) {
                if ($_GET['sortBy'] === 'date')
                    $rows = Utils::sortByDate($rows);

                if ($_GET['sortBy'] === 'name')
                    $rows = Utils::sortByName($rows);
            }
            if (!empty($_GET['name']))
                $rows = Utils::filterByName($rows, $_GET['name']);

            if (!empty($_GET['page']))
                $page = $_GET['page'] - 1;

            $model = $_GET;
        }

        $model['page'] = $page + 1;
        $model['pageCount'] = ceil(count($rows) / $count);
        $rows = array_slice($rows, $page * $count, $count);

        return $this->render(
            $viewPath,
            [
                'rows' => $rows,
                'model' => $model
            ]
        );
    }

    public function addAction()
    {
        if (!User::isAdmin())
            return $this->error(403);
        if (Core::getInstance()->requestMethod === 'POST') {
            $_POST = Utils::trimArray($_POST);

            $errors = [];
            if (empty($_POST['name']))
                $errors['name'] = 'Назва не може бути порожньою';
            else if (Publisher::checkPublisherByName($_POST['name']))
                $errors['name'] = 'Видавництво з такою назвою вже існує';

            if (empty($errors)) {
                Publisher::addPublisher($_POST['name'], $_FILES['file']['tmp_name']);
                $this->redirect('/publisher/index');
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

    public function editAction($params)
    {
        $id = intval($params[0]);
        if (!User::isAdmin())
            return $this->error(403);
        if ($id > 0) {
            $publisher = Publisher::getPublisherById($id);
            if (empty($publisher))
                return $this->error(404);
            if (Core::getInstance()->requestMethod === 'POST') {
                $_POST = Utils::trimArray($_POST);
                $errors = [];
                if (empty($_POST['name']))
                    $errors['name'] = 'Назва не може бути порожньою';
                else if (Publisher::checkPublisherByName($_POST['name']) && $_POST['name'] !== $publisher['name'])
                    $errors['name'] = 'Видавництво з такою назвою вже існує';

                if (empty($errors)) {
                    Publisher::updatePublisher($id, $_POST['name']);
                    if (!empty($_FILES['file']['tmp_name']))
                        Publisher::changePhoto($id, $_FILES['file']['tmp_name']);
                    $this->redirect('/publisher/index');
                } else {
                    return $this->render(null, [
                        'errors' => $errors,
                        'model' => $_POST,
                        'publisher' => $publisher
                    ]);
                }
            }
            return $this->render(null, [
                'publisher' => $publisher
            ]);
        } else
            return $this->error(403);
    }

    public function deleteAction($params)
    {
        $id = intval($params[0]);
        $yes = isset($params[1]) ? boolval($params[1] === 'yes') : false;
        if (!User::isAdmin())
            return $this->error(403);
        if ($id <= 0)
            return $this->error(403);
        $publisher = Publisher::getPublisherById($id);
        if ($yes) {
            Publisher::deletePublisher($id);
            $this->redirect('/publisher/index');
        }
        return $this->render(null, [
            'publisher' => $publisher
        ]);
    }

    public function viewAction($params)
    {
        $id = intval($params[0]);
        $publisher = Publisher::getPublisherById($id);
        if ($publisher === null)
            return $this->error(404);
        $categories = Category::getCategories();
        $rows = Product::getProductsInPublisherId($id);
        Utils::sortByDate($rows);

        $page = 0;
        $count = 20;

        if (Core::getInstance()->requestMethod === 'GET') {
            $_GET = Utils::trimArray($_GET);
            if (!empty($_GET['sortBy'])) {
                if ($_GET['sortBy'] === 'date')
                    $rows = Utils::sortByDate($rows);

                if ($_GET['sortBy'] === 'name')
                    $rows = Utils::sortByName($rows);

                if ($_GET['sortBy'] === 'price')
                    $rows = Utils::sortByPrice($rows);
            }

            if (!empty($_GET['name']))
                $_GET['name'] = trim($_GET['name']);

            if (!empty($_GET['categories_id']))
                $rows = Utils::filterByCategories($rows, $_GET['categories_id']);

            if (isset($_GET['price']) && $_GET['price'] <= 480)
                $rows = Utils::filterByPrice($rows, $_GET['price']);

            if (!empty($_GET['page']))
                $page = $_GET['page'] - 1;

            $model = $_GET;
        }

        $model['page'] = $page + 1;
        $model['pageCount'] = ceil(count($rows) / $count);
        $rows = array_slice($rows, $page * $count, $count);

        return $this->render(null, [
            'publisher' => $publisher,
            'rows' => $rows,
            'model' => $model,
            'categories' => $categories
        ]);
    }
}