<?php

namespace models;

use core\Core;

class Category
{
    protected static $tableName = 'category';

    public static function addCategory($name)
    {
        Core::getInstance()->db->insert(
            self::$tableName,
            [
                'name' => $name
            ]
        );
    }

    public static function deleteCategory($id)
    {
        CategoryList::deleteCategoryListByCategory($id);
        Core::getInstance()->db->delete(
            self::$tableName,
            [
                'id' => $id
            ]
        );
    }

    public static function updateCategory($id, $name)
    {
        Core::getInstance()->db->update(
            self::$tableName,
            [
                'name' => $name
            ],
            [
                'id' => $id
            ]
        );
    }

    public static function getCategoryById($id)
    {
        $rows = Core::getInstance()->db->select(
            self::$tableName,
            '*',
            [
                'id' => $id
            ]
        );
        if (!empty($rows))
            return $rows[0];
        else
            return null;
    }

    public static function getCategories()
    {
        $rows = Core::getInstance()->db->select(self::$tableName);
        return $rows;
    }

    public static function getCategoriesWithCount()
    {
        $rows = Core::getInstance()->db->select(self::$tableName);
        foreach ($rows as $key => $row) {
            $rows[$key]['count'] = CategoryList::getCategoryCount($row['id']);
        }
        return $rows;
    }

    public static function checkCategoryName($name)
    {
        $rows = Core::getInstance()->db->select(
            self::$tableName,
            '*',
            [
                'name' => $name
            ]
        );
        if (!empty($rows))
            return true;
        else
            return false;
    }
}