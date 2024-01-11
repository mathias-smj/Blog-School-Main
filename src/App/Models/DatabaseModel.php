<?php

namespace App\Models;
use PDO;
use PDOException;

class DatabaseModel
{
    private static string $host = "0.0.0.0";
    private static string $username = "root";
    private static string $password = "root";
    private static string $database = "db_blog_perfume";
    private static ?PDO $conn = null;

    /**
     * Get a PDO database connection.
     *
     * @return PDO The PDO database connection object.
     */
    public static function getConn(): PDO
    {
        if (is_null(self::$conn)) {
            try {
                self::$conn = new PDO("mysql:host=" . self::$host . ";port=3001;dbname=" . self::$database .
                    ";charset=UTF8", self::$username, self::$password);
                self::$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            } catch (PDOException $e) {
                die("Erreur de connexion à la base de données : " . $e->getMessage());
            }
        }
        return self::$conn;
    }
}

