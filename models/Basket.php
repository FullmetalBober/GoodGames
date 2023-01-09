<?php

namespace models;

use core\Core;

class Basket
{
    protected static $tableName = 'basket';
    public static function addProduct($product_id, $count = 1)
    {
        if (User::isUserAuthentificated()) {
            $user_id = User::getCurrentAuthentificatedUser()['id'];
            Core::getInstance()->db->insert(
                self::$tableName,
                [
                    'user_id' => $user_id,
                    'product_id' => $product_id,
                    'count' => $count
                ]
            );
        } else {

            if (!is_array($_SESSION['basket']) || !isset($_SESSION['basket']))
                $_SESSION['basket'] = [];
            $_SESSION['basket'] = array_merge($_SESSION['basket'], [$product_id => $count]);
        }
    }

    public static function addProductFromSessionToDB()
    {
        if (User::isUserAuthentificated()) {
            $user_id = User::getCurrentAuthentificatedUser()['id'];
            if (isset($_SESSION['basket']) && is_array($_SESSION['basket'])) {
                foreach ($_SESSION['basket'] as $product_id => $count) {
                    $basket = self::getProductInBasketDB($product_id);
                    if ($basket) {
                        self::updateProductInBasketDB($product_id, $basket['count'] + $count);
                    } else {
                        self::addProduct($product_id, $count);
                    }
                }
                unset($_SESSION['basket']);
            }
        }
    }

    public static function getProductInBasketDB($product_id)
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
        }
        return null;
    }

    public static function updateProductInBasketDB($product_id, $count)
    {
        if (User::isUserAuthentificated()) {
            $user_id = User::getCurrentAuthentificatedUser()['id'];
            Core::getInstance()->db->update(
                self::$tableName,
                [
                    'count' => $count
                ],
                [
                    'user_id' => $user_id,
                    'product_id' => $product_id
                ]
            );
        }
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
                $result = [];
                $products = [];
                $totalPrice = 0;
                foreach ($rows as $row) {
                    $product = Product::getProductById($row['product_id']);
                    $totalPrice += $product['price'] * $row['count'];
                    $products[] = [
                        'product' => $product,
                        'count' => $row['count']
                    ];
                }
                $result['products'] = $products;
                $result['totalPrice'] = $totalPrice;
                return $result;

            }
        } else
            if (isset($_SESSION['basket']) && is_array($_SESSION['basket'])) {
                $result = [];
                $products = [];
                $totalPrice = 0;
                foreach ($_SESSION['basket'] as $product_id => $count) {
                    $product = Product::getProductById($product_id);
                    $totalPrice += $product['price'] * $count;
                    $products[] = [
                        'product' => $product,
                        'count' => $count
                    ];
                }
                $result['products'] = $products;
                $result['totalPrice'] = $totalPrice;
                return $result;
            }
        return null;
    }


}