<?php

class PageController extends Controller
{
    public function index()
    {
        $gallery = new Gallery();
        $page = !empty($_GET['page']) ? $_GET['page'] : null;
        $imgs = $gallery->getGalleryImages($page);

        $galleries = array();
        foreach ($imgs as $img) {
            $arr = new StdClass();
            $arr->filename = $img['filename'];
            $arr->filepath = $img['filepath'];
            $galleries['files'][] = $arr;
            $galleries['gallery_name'] = $img['name'];
        }

        $this->view->render('page' . $page, $galleries);
    }
}