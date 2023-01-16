<?php

namespace models;

use core\Core;
use core\Utils;

class User
{
    protected static $tableName = 'user';
    public static $accessLevels = [
        'user' => 1,
        'admin' => 10,
        'superAdmin' => 11,
    ];
    public static function addUser($login, $password, $name, $photo)
    {
        if (!empty($row['photo'])) {
            $photo = Utils::addPhoto($photo, 'user');
        }
        Core::getInstance()->db->insert(
            self::$tableName,
            [
                'login' => $login,
                'password' => self::hashPassword($password),
                'name' => $name,
                'photo' => $photo,
            ]
        );
    }

    public static function hashPassword($password)
    {
        return md5($password);
    }

    public static function updateUser($id, $updatesArray)
    {
        $updatesArray = Utils::filterArray($updatesArray, ['name', 'login', 'password', 'access_level', 'photo']);
        if (!empty($updatesArray['photo'])) {
            $updatesArray['photo'] = self::updateUserPhoto($id, $updatesArray['photo']);
        }
        if (!empty($updatesArray['password'])) {
            $updatesArray['password'] = self::hashPassword($updatesArray['password']);
        }
        Core::getInstance()->db->update(
            self::$tableName,
            $updatesArray,
            ['id' => $id]
        );
    }

    public static function updateUserPhoto($id, $newPhoto)
    {
        $user = self::getUserById($id);
        Utils::deletePhoto($user['photo'], 'user');
        return Utils::addPhoto($newPhoto, 'user');
    }

    public static function isEmailExists($login)
    {
        $user = Core::getInstance()->db->select(
            self::$tableName,
            '*',
            ['login' => $login]
        );
        return !empty($user);
    }

    public static function verifyUser($login, $password)
    {
        $user = Core::getInstance()->db->select(
            self::$tableName,
            '*',
            [
                'login' => $login,
                'password' => $password
            ]
        );
        return !empty($user);
    }

    public static function getUserByLoginAndPassword($login, $password)
    {
        $user = Core::getInstance()->db->select(
            self::$tableName,
            '*',
            [
                'login' => $login,
                'password' => self::hashPassword($password)
            ]
        );
        if (!empty($user))
            return $user[0];
        return null;
    }

    public static function authentificateUser($user)
    {
        $_SESSION['user'] = $user;
    }

    public static function logoutUser()
    {
        unset($_SESSION['user']);
    }

    public static function isUserAuthentificated()
    {
        return isset($_SESSION['user']);
    }

    public static function getCurrentAuthentificatedUser()
    {
        return $_SESSION['user'] ?? null;
    }

    public static function isAdmin()
    {
        $user = self::getCurrentAuthentificatedUser();
        if (empty($user))
            return false;
        return $user['access_level'] == self::$accessLevels['admin'] || $user['access_level'] == self::$accessLevels['superAdmin'];
    }

    public static function isSuperAdmin($user = null)
    {
        if (empty($user))
            $user = self::getCurrentAuthentificatedUser();
        if (empty($user))
            return false;
        return $user['access_level'] == self::$accessLevels['superAdmin'];
    }

    public static function getUserById($id)
    {
        $user = Core::getInstance()->db->select(
            self::$tableName,
            '*',
            ['id' => $id]
        );
        if (!empty($user))
            return $user[0];
        return null;
    }

    public static function getAllUsers()
    {
        return Core::getInstance()->db->select(
            self::$tableName,
            '*'
        );
    }

    public static function deleteUser($id)
    {
        $user = self::getUserById($id);
        if (!self::isSuperAdmin($user)) {
            Utils::deletePhoto($user['photo'], 'user');
            if (self::getCurrentAuthentificatedUser()['id'] == $id)
                self::logoutUser();
            Core::getInstance()->db->delete(
                self::$tableName,
                [
                    'id' => $id
                ]
            );
        }
    }
}