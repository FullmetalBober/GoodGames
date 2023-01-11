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
            $fileName = Utils::addPhoto($photoPath, 'publisher');
        }
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
        $publisher = self::getPublisherById($id);
        Utils::deletePhoto($publisher['photo'], 'publisher');
        $fileName = Utils::addPhoto($newPhoto, 'publisher');
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

    public static function checkPublisherByName($name)
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

    public static function deletePublisher($id)
    {
        $publisher = self::getPublisherById($id);
        Utils::deletePhoto($publisher['photo'], 'publisher');
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