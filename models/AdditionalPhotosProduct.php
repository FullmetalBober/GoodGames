<?php

namespace models;

use core\Core;

class AdditionalPhotosProduct
{
    protected static $tableName = 'additional_photos_product';

    public static function addAdditionalPhotos($product_id, $photoArray)
    {
        foreach ($photoArray as $photo) {
            $photo = self::getNewPhotoPath($photo);
            Core::getInstance()->db->insert(
                self::$tableName,
                [
                    'product_id' => $product_id,
                    'photo' => $photo
                ]
            );
        }
    }

    public static function getNewPhotoPath($photo)
    {
        do {
            $fileName = uniqid() . '.jpg';
            $newPath = "files/product/$fileName";
        }
        while (file_exists($newPath));
        move_uploaded_file($photo, $newPath);
        return $fileName;
    }

    public static function deleteAdditionalPhotos($product_id)
    {
        $rows = self::getAdditionalPhotos($product_id);
        foreach ($rows as $row) {
            $photoPath = "files/product/" . $row['photo'];
            if (is_file($photoPath))
                unlink($photoPath);
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

}