<?php

class View
{
    public function render($path, $params = [])
    {
        $this->view = $path;
        $this->params = $params;
        
        require('View/layout.php');
    }
}