<?php

namespace models;

use core\Core;
use core\Utils;

class AdditionalPhotosProduct
{
    protected static $tableName = 'additional_photos_product';

    public static function addAdditionalPhotos($product_id, $photoArray)
    {
        foreach ($photoArray as $photo) {
            $photo = Utils::addPhoto($photo, 'additional');
            Core::getInstance()->db->insert(
                self::$tableName,
                [
                    'product_id' => $product_id,
                    'photo' => $photo
                ]
            );
        }
    }

    public static function deleteAdditionalPhotos($product_id)
    {
        $rows = self::getAdditionalPhotos($product_id);
        foreach ($rows as $row) {
            Utils::deletePhoto($row['photo'], 'additional');
        }
        Core::getInstance()->db->delete(
            self::$tableName,
            [
                'product_id' => $product_id
            ]
        );
    }

    public static function getAdditionalPhotos($product_id)
    {
        return Core::getInstance()->db->select(
            self::$tableName,
            '*',
            [
                'product_id' => $product_id
            ]
        );
    }

    public static function updateAdditionalPhotos($product_id, $photoArray)
    {
        self::deleteAdditionalPhotos($product_id);
        self::addAdditionalPhotos($product_id, $photoArray);
    }

    public static function getPhotos()
    {
        $rows = Core::getInstance()->db->select(
            self::$tableName,
            '*'
        );
        return $rows;
    }
}