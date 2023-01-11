<?php

namespace models;

use core\Core;

class Library
{
    protected static $tableName = 'library';

    public static function addProduct($product_id)
    {
        if (User::isUserAuthentificated()) {
            $user_id = User::getCurrentAuthentificatedUser()['id'];

            $check = self::getProductInLibrary($product_id);
            
            if (empty($check)) {
                Core::getInstance()->db->insert(
                    self::$tableName,
                    [
                        'user_id' => $user_id,
                        'product_id' => $product_id,
                    ]
                );
            }
        }
    }

    public static function getProductInLibrary($product_id)
    {
        if (User::isUserAuthentificated()) {
            $user_id = User::getCurrentAuthentificatedUser()['id'];
            $rows = Core::getInstance()->db->select(
                self::$tableName, '*',
                [
                    'user_id' => $user_id,
                    'product_id' => $product_id,
                ]
            );
            if (!empty($rows))
                return $rows[0];
        }
        return null;
    }

}