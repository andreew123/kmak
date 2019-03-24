<?php

class Bootstrap
{
    public function __construct()
    {
        parse_str($_SERVER['QUERY_STRING'], $params);

        if (!empty($params)) {
            $controllerName = key($params) . 'Controller';
        } else {
            $controllerName = 'HomeController';
        }

        if (file_exists('./Controllers/' . $controllerName . '.php')) {
            $controller = new $controllerName();
        }
        
        $controller->index();
    }
}