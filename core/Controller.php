<?php

namespace core;

class Controller
{
    protected $viewPath;
    public function __construct()
    {
        $moduleName = \core\Core::getInstance()->app['moduleName'];
        $actionName = \core\Core::getInstance()->app['actionName'];
        $this->viewPath = "views/{$moduleName}/{$actionName}.php";
    }

    public function render($viewPath = null, $params = null)
    {
        if (empty($viewPath))
            $viewPath = $this->viewPath;
        $tpl = new Template($viewPath);
        if (!empty($params))
            $tpl->setParams($params);
        return $tpl->getHTML();
    }
}
