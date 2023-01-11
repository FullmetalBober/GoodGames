<?php

namespace models;

use core\Core;
use core\Utils;

class Comment
{
    protected static $tableName = 'comment';

    public static function addComment($product_id, $array)
    {
        if (User::isUserAuthentificated()) {
            $user_id = User::getCurrentAuthentificatedUser()['id'];

            $array['user_id'] = $user_id;
            $array['product_id'] = $product_id;
            $array = Utils::filterArray($array, ['user_id', 'product_id', 'comment', 'rating']);
            Core::getInstance()->db->insert(
                self::$tableName,
                $array
            );
        }
    }

    public static function getComments($product_id)
    {
        $rows = Core::getInstance()->db->select(
            self::$tableName,
            '*',
            [
                'product_id' => $product_id,
            ]
        );

        foreach ($rows as &$row)
            $row['user'] = User::getUserById($row['user_id'])['name'];

        return $rows;
    }
}