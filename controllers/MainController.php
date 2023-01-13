<?php

namespace controllers;

use core\Controller;
use core\Utils;
use models\AdditionalPhotosProduct;
use models\Category;
use models\Comment;
use models\Product;
use models\Publisher;
use models\User;

class MainController extends Controller
{
    public function indexAction()
    {
        $info['users'] = count(User::getAllUsers());
        $info['products'] = count(Product::getProducts());
        $info['publishers'] = count(Publisher::getPublishers());
        $info['categories'] = count(Category::getCategories());
        $info['comments'] = count(Comment::getCommentsAll());
        $photos = AdditionalPhotosProduct::getPhotos();
        $countPhotos = floor(count($photos) / 2);
        $randPhotos = array_rand($photos, $countPhotos);
        $photos = Utils::getPhotosFromArray($photos, $randPhotos, $countPhotos);
        $photoFirst = $photos[0];
        $photos = Utils::deleteItemFromArray($photos, $photoFirst);
        return $this->render(null,
            [
                'info' => $info,
                'photos' => $photos,
                'photoFirst' => $photoFirst
            ]);
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