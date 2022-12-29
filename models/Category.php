<?php

namespace models;

use core\Core;
use core\Utils;

class Category
{
    protected static $tableName = 'category';
    public static function AddCategory($name, $photoPath)
    {
        $fileName = '123456789.jpg';
        $newPath = "files/category/$fileName";
        move_uploaded_file($photoPath, $newPath);
        Core::getInstance()->db->insert(
            self::$tableName,
            [
                'name' => $name,
                'photo' => $fileName
            ]
        );
    }

    public static function getCategoryById($id)
    {
        $rows = Core::getInstance()->db->select(
            self::$tableName,
            [
                'id' => $id
            ]
        );
        if (!empty($rows))
            return $rows[0];
        else
            return null;
    }

    public static function deleteCategoryById($id)
    {
        Core::getInstance()->db->delete(
            self::$tableName,
            [
                'id' => $id
            ]
        );
    }

    public static function updateCategoryById($id, $newName)
    {
        Core::getInstance()->db->update(
            self::$tableName,
            [
                'name' => $newName
            ],
            [
                'id' => $id
            ]
        );
    }

    public static function getCategories()
    {
        $rows = Core::getInstance()->db->select(self::$tableName);
        return $rows;
    }
}