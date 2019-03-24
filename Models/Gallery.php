<?php

class Gallery extends Model
{
    public $table = 'galleries';

    public function get()
    {
        return DB::query("SELECT * FROM $table");
    }

    public function getGalleryImages($id)
    {
        return DB::query(
            "SELECT t.*, i.name as filename, i.path as filepath FROM $this->table t
            LEFT JOIN gallery_images gi ON t.id = gi.gallery_id
            LEFT JOIN images i ON gi.image_id = i.id
            WHERE t.id = $id"
        );
    }
}