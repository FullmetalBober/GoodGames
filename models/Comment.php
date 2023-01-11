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

    public static function updateComment($product_id, $array)
    {
        if (User::isUserAuthentificated()) {
            $user_id = User::getCurrentAuthentificatedUser()['id'];
            $array['user_id'] = $user_id;
            $array['product_id'] = $product_id;
            $array = Utils::filterArray($array, ['user_id', 'product_id', 'comment', 'rating']);
            Core::getInstance()->db->update(
                self::$tableName,
                $array,
                [
                    'user_id' => $user_id,
                    'product_id' => $product_id,
                ]
            );
        }
    }

    public static function deleteComment($id)
    {
        if (User::isUserAuthentificated()) {
            Core::getInstance()->db->delete(
                self::$tableName,
                [
                    'id' => $id
                ]
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

        foreach ($rows as &$row) {
            $row['user'] = User::getUserById($row['user_id'])['name'];
            $row['photo'] = User::getUserById($row['user_id'])['photo'];
        }

        return $rows;
    }

    public static function getCommentByUserId($product_id, $user_id)
    {
        $rows = Core::getInstance()->db->select(
            self::$tableName,
            '*',
            [
                'user_id' => $user_id,
                'product_id' => $product_id,
            ]
        );

        foreach ($rows as &$row) {
            $row['user'] = User::getUserById($row['user_id'])['name'];
            $row['photo'] = User::getUserById($row['user_id'])['photo'];
        }

        return $rows;
    }

    public static function getRating($product_id, $comments = null)
    {
        if ($comments === null)
            $comments = self::getComments($product_id);
        if (empty($comments))
            return 0;
        $rating = 0;
        foreach ($comments as $comment)
            $rating += $comment['rating'];
        return $rating / count($comments) * 100;
    }
}