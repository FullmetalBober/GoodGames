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

    public static function getVisibleProductsInPublisherId($publisher_id)
    {
        $rows = Core::getInstance()->db->select(self::$tableName, '*', [
            'publisher_id' => $publisher_id,
            'visible' => 1
        ]);
        return $rows;
    }

    public static function getProducts()
    {
        $rows = Core::getInstance()->db->select(self::$tableName);
        return $rows;
    }

    public static function getVisibleProducts()
    {
        $rows = Core::getInstance()->db->select(self::$tableName, '*', [
            'visible' => 1
        ]);
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

    public static function errorValidate($array, $id = null)
    {
        $errors = [];
        $product = self::getProductById($id);
        if(empty($product))
            $product = array('name' => null);

        if (empty($array['name']))
            $errors['name'] = 'Назва не може бути порожньою';
        else if (self::checkProductByName($array['name']) && $array['name'] != self::getProductById($id)['name'])
            $errors['name'] = 'Товар з такою назвою вже існує';
        if (empty($array['publisher_id']))
            $errors['publisher_id'] = 'Видавець не може бути порожншм';
        if (!isset($array['price']) || $array['price'] < 0)
            $errors['price'] = 'Ціна некоректна';
        if (empty($array['visible']))
            $errors['visible'] = 'Відображення не може бути порожнім';
        if (empty($array['categories_id']))
            $errors['categories_id'] = 'Категорії не можуть бути порожніми';
        if (empty($array['short_description']))
            $errors['short_description'] = 'Короткий опис не може бути порожнім';
        if (empty($array['description']))
            $errors['description'] = 'Опис не може бути порожнім';
        return $errors;
    }
}