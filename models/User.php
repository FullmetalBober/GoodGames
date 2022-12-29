<?php

namespace models;

use core\Utils;

class User
{
    protected static $tableName = 'user';
    public static function addUser($login, $password, $lastname, $firstname)
    {
        \core\Core::getInstance()->db->insert(
            self::$tableName,
            [
                'login' => $login,
                'password' => $password,
                'lastname' => $lastname,
                'firstname' => $firstname
            ]
        );
    }

    public static function updateUser($id, $updatesArray)
    {
        $updatesArray = Utils::filterArray($updatesArray, ['lastname', 'firstname']);
        \core\Core::getInstance()->db->update(
            self::$tableName,
            $updatesArray,
            ['id' => $id]
        );
    }

    public static function isEmailExists($login)
    {
        $user = \core\Core::getInstance()->db->select(
            self::$tableName,
            '*',
            ['login' => $login]
        );
        return !empty($user);
    }

    public static function verifyUser($login, $password)
    {
        $user = \core\Core::getInstance()->db->select(
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
        $user = \core\Core::getInstance()->db->select(
            self::$tableName,
            '*',
            [
                'login' => $login,
                'password' => $password
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
        return $user['access_level'] ?? null == 10;
    }
}