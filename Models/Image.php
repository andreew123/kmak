<?php

class Images extends Model
{
    public $table = 'images';

    public function get()
    {
        return DB::query("SELECT * FROM $table");
    }
}