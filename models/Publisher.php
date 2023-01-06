<?php

namespace models;

use core\Core;
use core\Utils;

class Publisher
{
    protected static $tableName = 'publisher';
    public static function addPublisher($name, $photoPath)
    {
        if (empty($photoPath))
            $fileName = null;
        else {
            do {
                $fileName = uniqid() . '.jpg';
                $newPath = "files/publisher/$fileName";
            }
            while (file_exists($newPath));
            move_uploaded_file($photoPath, $newPath);
        }
        Core::getInstance()->db->insert(
            self::$tableName,
            [
                'name' => $name,
                'photo' => $fileName
            ]
        );
    }

    public static function deletePhotoFile($id)
    {
        $row = self::getPublisherById($id);
        $photoPath = "files/publisher/" . $row['photo'];
        if (is_file($photoPath))
            unlink($photoPath);
    }

    public static function changePhoto($id, $newPhoto)
    {
        self::deletePhotoFile($id);
        do {
            $fileName = uniqid() . '.jpg';
            $newPath = "files/publisher/$fileName";
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

    public static function getPublisherById($id)
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

    public static function deletePublisher($id)
    {
        self::deletePhotoFile($id);
        Core::getInstance()->db->delete(
            self::$tableName,
            [
                'id' => $id
            ]
        );
    }

    public static function updatePublisher($id, $newName)
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

    public static function getPublishers()
    {
        $rows = Core::getInstance()->db->select(self::$tableName);
        return $rows;
    }
}