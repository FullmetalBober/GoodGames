<?php

namespace controllers;

class NewsController extends \core\Controller
{
    public function __construct()
    {
        parent::__construct();
    }
    public function viewAction()
    {
       return $this-> render();
    }

    public function indexAction()
    {
        return $this-> render(null, [
            'title' => 'Список новин',
        ]);
    }
}
