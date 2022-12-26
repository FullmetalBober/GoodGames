<?php

use core\DB;

include('config/database.php');

spl_autoload_register(function ($className) {
    $path = $className . '.php';
    if (is_file($path))
        require($path);
});

$db = new DB(DATABASE_HOSTNAME, DATABASE_LOGIN, DATABASE_PASSWORD, DATABASE_NAME);
$rows = $db->update(
    'producer',
    [
        'name' => 'LENOVO'
    ],
    [
        'name' => 'Lenovo'
    ]
);
var_dump($rows);
/*$core = core\Core::getInstance();
$core->Initialize();
$core->Run();
$core->Done();*/
