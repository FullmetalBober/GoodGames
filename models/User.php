<?php

namespace models;

use core\Core;
use core\Utils;

class User
{
    protected static $tableName = 'user';
    public static function addUser($login, $password, $name)
    {
        Core::getInstance()->db->insert(
            self::$tableName,
            [
                'login' => $login,
                'password' => self::hashPassword($password),
                'name' => $name
            ]
        );
    }

    public static function hashPassword($password)
    {
        return md5($password);
    }

    public static function updateUser($id, $updatesArray)
    {
        $updatesArray = Utils::filterArray($updatesArray, ['name', 'login', 'password', 'access_level']);
        Core::getInstance()->db->update(
            self::$tableName,
            $updatesArray,
            ['id' => $id]
        );
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
        return $user['access_level'] == 10;
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
}