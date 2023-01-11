<?php

namespace models;

use core\Core;

class Basket
{
    protected static $tableName = 'basket';
    public static function addProduct($product_id,)
    {
        if (User::isUserAuthentificated()) {
            $user_id = User::getCurrentAuthentificatedUser()['id'];
            $basket = self::getProductInBasket($product_id);
            $library = Library::getProductInLibrary($product_id);
            if (empty($basket) && empty($library))
            Core::getInstance()->db->insert(
                self::$tableName,
                [
                    'user_id' => $user_id,
                    'product_id' => $product_id,
                ]
            );
        } else {
            $basket = self::getProductInBasket($product_id);
            $library = Library::getProductInLibrary($product_id);
            if (!$basket && !$library)
                return;
            if (!isset($_SESSION['basket']) || !is_array($_SESSION['basket']))
                $_SESSION['basket'] = [];
            $_SESSION['basket'] = array_merge($_SESSION['basket'], [$product_id]);
        }
    }

    public static function addProductFromSessionToDB()
    {
        if (User::isUserAuthentificated()) {
            if (isset($_SESSION['basket']) && is_array($_SESSION['basket'])) {
                foreach ($_SESSION['basket'] as $product_id) {
                    $basket = self::getProductInBasket($product_id);
                    $library = Library::getProductInLibrary($product_id);
                    if (!$basket && !$library)
                        self::addProduct($product_id);
                }
                unset($_SESSION['basket']);
            }
        }
    }

    public static function getProductInBasket($product_id)
    {
        if (User::isUserAuthentificated()) {
            $user_id = User::getCurrentAuthentificatedUser()['id'];
            $rows = Core::getInstance()->db->select(
                self::$tableName,
                '*',
                [
                    'user_id' => $user_id,
                    'product_id' => $product_id
                ]
            );
            if (!empty($rows))
                return $rows[0];
        }else{
            if (isset($_SESSION['basket']) && is_array($_SESSION['basket'])) {
                if (in_array($product_id, $_SESSION['basket']))
                    return true;
            }
        }
        return null;
    }

    public static function getProductsInBasket()
    {
        if (User::isUserAuthentificated()) {
            $user_id = User::getCurrentAuthentificatedUser()['id'];
            $rows = Core::getInstance()->db->select(
                self::$tableName,
                '*',
                [
                    'user_id' => $user_id
                ]
            );
            if (!empty($rows)) {
                return self::reconstructRows($rows);
            }
        } else
            if (isset($_SESSION['basket']) && is_array($_SESSION['basket'])) {
                $result = [];
                $products = [];
                $totalPrice = 0;
                foreach ($_SESSION['basket'] as $product_id) {
                    $product = Product::getProductById($product_id);
                    $totalPrice += $product['price'];
                    $products[] = [
                        'product' => $product,
                        'id' => $product_id
                    ];
                }
                $result['products'] = $products;
                $result['totalPrice'] = $totalPrice;
                return $result;
            }
        return null;
    }

    public static function deleteOneProduct($product_id){
        if (User::isUserAuthentificated()) {
            $user_id = User::getCurrentAuthentificatedUser()['id'];
            Core::getInstance()->db->delete(
                self::$tableName,
                [
                    'user_id' => $user_id,
                    'product_id' => $product_id
                ]
            );
        } else{
            if (($key = array_search($product_id, $_SESSION['basket'])) !== false) {
                unset($_SESSION['basket'][$key]);
            }
        }
    }

    public static function deleteOneProductById($id){
        if (User::isUserAuthentificated()) {
            $user_id = User::getCurrentAuthentificatedUser()['id'];
            Core::getInstance()->db->delete(
                self::$tableName,
                [
                    'user_id' => $user_id,
                    'id' => $id
                ]
            );
        }
    }

    public static function deleteAllProducts(){
        if (User::isUserAuthentificated()) {
            $user_id = User::getCurrentAuthentificatedUser()['id'];
            Core::getInstance()->db->delete(
                self::$tableName,
                [
                    'user_id' => $user_id
                ]
            );
        }else{
            if (isset($_SESSION['basket']) && is_array($_SESSION['basket']))
                unset($_SESSION['basket']);
        }
    }

    public static function getProductById($id)
    {
        $rows = Core::getInstance()->db->select(
            self::$tableName,
            '*',
            [
                'id' => $id
            ]
        );
        if (!empty($rows)) {
            return self::reconstructRows($rows);
        }

        return null;
    }

    public static function reconstructRows($rows){
        $result = [];
        $products = [];
        $totalPrice = 0;
        foreach ($rows as $row) {
            $product = Product::getProductById($row['product_id']);
            $id = $row['id'];
            $totalPrice += $product['price'];
            $products[] = [
                'product' => $product,
                'id' => $id
            ];
        }
        $result['products'] = $products;
        $result['totalPrice'] = $totalPrice;
        return $result;
    }
}