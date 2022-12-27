<?php

namespace core;

use controllers\MainController;

class Core
{
    private static $instance = null;
    public $app;
    public $db;
    private function __construct()
    {
        $this->app = [];
    }
    public static function getInstance()
    {
        if (empty(self::$instance)) {
            self::$instance = new self();
        }
        return self::$instance;
    }

    public function Initialize()
    {
        $this->db = new DB(DATABASE_HOSTNAME, DATABASE_LOGIN, DATABASE_PASSWORD, DATABASE_NAME);
    }

    public function Run()
    {
        // if (!empty($_GET['route']))
        $route = $_GET['route'] ?? null;
        // else
        // $route = 'main/index';
        $routeParts = explode('/', $route ?? '');
        $moduleName = array_shift($routeParts);
        if (empty($moduleName))
            $moduleName = 'main';
        $actionName = array_shift($routeParts);
        if (empty($actionName))
            $actionName = 'index';
        $this->app['moduleName'] = $moduleName;
        $this->app['actionName'] = $actionName;
        $controllerName = '\\controllers\\' . ucfirst($moduleName) . 'Controller';
        $controllerActionName = $actionName . 'Action';
        $statusCode = 200;
        if (class_exists($controllerName)) {
            $controller = new $controllerName();
            if (method_exists($controller, $controllerActionName))
                $this->app['actionResult'] = $controller->$controllerActionName();
            else
                $statusCode = 404;
        } else
            $statusCode = 404;

        $statusCodeType = intval($statusCode / 100);
        if ($statusCodeType == 4 || $statusCodeType == 5) {
            $mainController = new MainController();
            $mainController->errorAction($statusCode);
        }
    }

    public function Done()
    {
        $pathToLayout = 'themes/light/layout.php';
        $tpl = new Template($pathToLayout);
        $tpl->setParam('Content', $this->app['actionResult']);
        $html = $tpl->getHTML();
        echo $html;
    }
}
