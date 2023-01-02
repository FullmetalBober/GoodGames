<?php

namespace core;

use controllers\MainController;

class Core
{
    private static $instance = null;
    public $app;
    public $pageParams;
    public DB $db;
    public $requestMethod;
    private function __construct()
    {
        global $pageParams;
        $this->app = [];
        $this->pageParams = $pageParams;
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
        session_start();
        $this->db = new DB(DATABASE_HOSTNAME, DATABASE_LOGIN, DATABASE_PASSWORD, DATABASE_NAME);
        $this->requestMethod = $_SERVER['REQUEST_METHOD'];
    }

    public function Run()
    {
        $route = $_GET['route'] ?? null;
        $routeParts = explode('/', $route ?? '');
        $moduleName = array_shift($routeParts);
        if (empty($moduleName))
            $moduleName = 'product';
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
            if (method_exists($controller, $controllerActionName)) {
                $actionResult = $controller->$controllerActionName($routeParts);
                if ($actionResult instanceof Error)
                    $statusCode = $actionResult->code;
                $this->pageParams['content'] = $actionResult;
            } else
                $statusCode = 404;
        } else
            $statusCode = 404;

        $statusCodeType = intval($statusCode / 100);
        if ($statusCodeType == 4 || $statusCodeType == 5) {
            $mainController = new MainController();
            $this->pageParams['content'] = $mainController->errorAction($statusCode);
        }
    }

    public function Done()
    {
        $pathToLayout = 'themes/light/layout.php';
        $tpl = new Template($pathToLayout);
        $tpl->setParams($this->pageParams);
        $html = $tpl->getHTML();
        echo $html;
    }
}