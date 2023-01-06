<?php

namespace controllers;

use core\Controller;
use core\Core;
use models\Publisher;
use models\Product;
use models\User;

class PublisherController extends Controller
{
    public function indexAction()
    {
        $rows = Publisher::getPublishers();
        $viewPath = null;
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
                $errors['name'] = 'Назва не може бути порожньою';

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
            $filePath = 'files/publisher' . $publisher['photo'];
            if (file_exists($filePath))
                unlink($filePath);
            Publisher::deletePublisher($id);
            $this->redirect('/publisher/index');
        }
        return $this->render(null, [
            'publisher' => $publisher
        ]);
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

                $errors = [];
                if (empty($_POST['name']))
                    $errors['name'] = 'Назва не може бути порожньою';

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

    public function viewAction($params)
    {
        $id = intval($params[0]);
        $publisher = Publisher::getPublisherById($id);
        $products = Product::getProductsInPublisherId($id);
        return $this->render(null, [
            'publisher' => $publisher,
            'products' => $products
        ]);
    }
}