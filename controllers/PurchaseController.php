<?php

namespace controllers;

use core\Controller;
use core\Core;
use models\Basket;
use models\Library;
use models\User;

class PurchaseController extends Controller
{
    public function indexAction($params)
    {
        if (!User::isUserAuthentificated())
            return $this->redirect('/user/login');

        $id = intval($params[0] ?? null);
        if (!empty($id)) {
            $purchase = Basket::getProductById($id);
        } else {
            $purchase = Basket::getProductsInBasket();
        }

        if (Core::getInstance()->requestMethod === 'POST') {
            if (!empty($purchase)) {
                foreach ($purchase['products'] as $product) {
                    Basket::deleteOneProductById($product['id']);
                    Library::addProduct($product['id']);
                }
            }
            return $this->redirect('/');
        }
        return $this->render(null, [
            'purchase' => $purchase
        ]);
    }

}