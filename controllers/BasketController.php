<?php

namespace controllers;

use core\Controller;
use core\Core;
use models\Basket;

class BasketController extends Controller
{
    public function indexAction()
    {
        if (Core::getInstance()->requestMethod === 'POST') {
            if (!empty($_POST['deleteOne']))
                Basket::deleteOneProduct($_POST['deleteOne']);

            if (!empty($_POST['deleteAll']))
                Basket::deleteAllProducts();

        }
        $basket = Basket::getProductsInBasket();
        return $this->render(null, [
            'basket' => $basket
        ]);
    }

}