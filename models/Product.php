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
            $row['photo'] = Utils::addPhoto($row['photo'], 'product');
        }
        return Core::getInstance()->db->insert(self::$tableName, $row);
    }

    public static function deleteProduct($id)
    {
        $product = self::getProductById($id);
        Utils::deletePhoto($product['photo'], 'product');
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

    public static function updateProductPhoto($id, $newPhoto)
    {
        $product = self::getProductById($id);
        Utils::deletePhoto($product['photo'], 'product');
        return Utils::addPhoto($newPhoto, 'product');
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

    public static function checkBasketAndLibrary($product_id)
    {
        $basket = Basket::getProductInBasket($product_id);
        $library = Library::getProductInLibrary($product_id);
        if (empty($basket) && empty($library))
            return false;
        return true;
    }
}