<?php

require_once('Helpers/View.php');

class Controller
{
    public function __construct()
    {
        $this->view = new View();
    }
}