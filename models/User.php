<?php

namespace models;

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
}
