<?php

namespace controllers;

use core\Controller;
use models\Basket;

class BasketController extends Controller
{
    public function indexAction()
    {
        $basket = Basket::getProductsInBasket();
        return $this->render(null, [
            'basket' => $basket
        ]);
    }

}