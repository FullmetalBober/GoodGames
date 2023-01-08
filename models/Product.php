<?php

namespace models;

use core\Core;
use core\Utils;

class Product
{
    protected static $tableName = 'product';

    public static function addProduct($row)
    {
        $fieldsList = ['name', 'publisher_id', 'price', 'short_description', 'description', 'visible', 'photo'];
        $row = Utils::filterArray($row, $fieldsList);
        if (!empty($row['photo'])) {
            $row['photo'] = self::addProductPhoto($row['photo']);
        }
        return Core::getInstance()->db->insert(self::$tableName, $row);
    }

    public static function deleteProduct($id)
    {
        self::deleteProductPhoto($id);
        AdditionalPhotosProduct::deleteAdditionalPhotos($id);
        CategoryList::deleteCategoryListByProduct($id);
        Core::getInstance()->db->delete(self::$tableName, [
            'id' => $id
        ]);
    }

    public static function updateProduct($id, $row)
    {
        $fieldsList = ['name', 'publisher_id', 'price', 'short_description', 'description', 'visible', 'photo'];
        $row = Utils::filterArray($row, $fieldsList);
        if (!empty($row['photo'])) {
            $row['photo'] = self::updateProductPhoto($id, $row['photo']);
        }
        Core::getInstance()->db->update(self::$tableName, $row, [
            'id' => $id
        ]);
    }

    public static function addProductPhoto($photo)
    {
        do {
            $fileName = uniqid() . '.jpg';
            $newPath = "files/product/$fileName";
        }
        while (file_exists($newPath));
        move_uploaded_file($photo, $newPath);
        return $fileName;
    }

    public static function deleteProductPhoto($id)
    {
        $row = self::getProductById($id);
        $photoPath = "files/product/" . $row['photo'];
        if (is_file($photoPath))
            unlink($photoPath);
    }

    public static function updateProductPhoto($id, $newPhoto)
    {
        self::deleteProductPhoto($id);
        return self::addProductPhoto($newPhoto);
    }

    public static function getProductById($id)
    {
        $row = Core::getInstance()->db->select(self::$tableName, '*', [
            'id' => $id
        ]);
        if (!empty($row))
            return $row[0];
        else
            return null;
    }

    public static function getProductsInPublisherId($publisher_id)
    {
        $rows = Core::getInstance()->db->select(self::$tableName, '*', [
            'publisher_id' => $publisher_id
        ]);
        return $rows;
    }

    public static function getProducts()
    {
        $rows = Core::getInstance()->db->select(self::$tableName);
        return $rows;
    }

    public static function checkProductByName($name)
    {
        $row = Core::getInstance()->db->select(self::$tableName, '*', [
            'name' => $name
        ]);
        if (!empty($row))
            return true;
        else
            return false;
    }
}