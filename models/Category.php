<?php

namespace models;

use core\Core;
use core\Utils;

class Category
{
    protected static $tableName = 'category';
    public static function addCategory($name, $photoPath)
    {
        do {
            $fileName = uniqid() . '.jpg';
            $newPath = "files/category/$fileName";
        }
        while (file_exists($newPath));
        move_uploaded_file($photoPath, $newPath);
        Core::getInstance()->db->insert(
            self::$tableName,
            [
                'name' => $name,
                'photo' => $fileName
            ]
        );
    }

    public static function changePhoto($id, $newPhoto)
    {
        $row = self::getCategoryById($id);
        $photoPath = "files/category/" . $row['photo'];
        if (is_file($photoPath))
            unlink($photoPath);

        do {
            $fileName = uniqid() . '.jpg';
            $newPath = "files/category/$fileName";
        }
        while (file_exists($newPath));
        move_uploaded_file($newPhoto, $newPath);
        Core::getInstance()->db->update(
            self::$tableName,
            [
                'photo' => $fileName
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

    public static function deleteCategory($id)
    {
        Core::getInstance()->db->delete(
            self::$tableName,
            [
                'id' => $id
            ]
        );
    }

    public static function updateCategory($id, $newName)
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