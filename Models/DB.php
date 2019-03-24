<?php

class DB
{
    private static function connect()
    {
        $conf = include('config/config.php');
        $host = $conf['host'];
        $dbname = $conf['dbname'];

        $pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $conf['user'], $conf['password']);
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        return $pdo;
    }

    public static function query($query, $params = [])
    {
        $statement = self::connect()->prepare($query);
        $statement->execute($params);
        if (explode(' ', $query)[0] == 'SELECT') {
            return $statement->fetchAll();
        }
    }
}