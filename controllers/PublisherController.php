<?php

namespace controllers;

use core\Controller;
use core\Core;
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
        $rows = array_reverse($rows);
        $viewPath = null;

        $page = 0;
        $count = 20;

        if (Core::getInstance()->requestMethod === 'GET') {
            if (!empty($_GET['sortBy'])) {
                if ($_GET['sortBy'] === 'name') {
                    usort($rows, function ($a, $b) {
                        return strcmp($a['name'], $b['name']);
                    });
                }
            }
            if (!empty($_GET['name']))
                $rows = array_filter($rows, function ($row) {
                    if (strpos($row['name'], $_GET['name']) !== false)
                        return $row;
                });

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
            $_POST['name'] = trim($_POST['name']);

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

    public function viewAction($params)
    {
        $id = intval($params[0]);
        $publisher = Publisher::getPublisherById($id);
        $categories = Category::getCategories();
        $rows = Product::getProductsInPublisherId($id);
        $rows = array_reverse($rows);

        $page = 0;
        $count = 20;

        if (Core::getInstance()->requestMethod === 'GET') {
            if (!empty($_GET['sortBy'])) {
                if ($_GET['sortBy'] === 'name') {
                    usort($rows, function ($a, $b) {
                        return strcmp($a['name'], $b['name']);
                    });
                }

                if ($_GET['sortBy'] === 'price') {
                    usort($rows, function ($a, $b) {
                        return $a['price'] - $b['price'];
                    });
                }
            }

            if (!empty($_GET['name']))
                $rows = array_filter($rows, function ($row) {
                    if (strpos($row['name'], $_GET['name']) !== false)
                        return $row;
                });

            if (!empty($_GET['categories_id']))
                $rows = array_filter($rows, function ($row) {
                    $array1 = $_GET['categories_id'];
                    $array2 = CategoryList::getCategoryListByProductId($row['id']);
                    if (array_intersect($array1, $array2) == $array1)
                        return $row;
                });

            if (isset($_GET['price']) && $_GET['price'] <= 480)
                $rows = array_filter($rows, function ($row) {
                    if ($row['price'] <= $_GET['price'])
                        return $row;
                });

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