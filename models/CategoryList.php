<?php

namespace models;

use core\Core;

class CategoryList
{
    protected static $tableName = 'category_list';

    public static function addCategoryList($product_id, $category_idArray)
    {
        foreach ($category_idArray as $category_id) {
            Core::getInstance()->db->insert(
                self::$tableName,
                [
                    'product_id' => $product_id,
                    'category_id' => $category_id
                ]
            );
        }
    }

    public static function getCategoriesList()
    {
        $rows = Core::getInstance()->db->select(
            self::$tableName,
            '*'
        );
        return $rows;
    }

    public static function getCategoryCount($category_id)
    {
        $rows = Core::getInstance()->db->select(
            self::$tableName,
            '*',
            [
                'category_id' => $category_id
            ]
        );
        return count($rows);
    }
}