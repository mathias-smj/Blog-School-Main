<?php

namespace App\utils;

class SecurityTool
{
    /**
     * Hash a password using the default PHP password hashing algorithm.
     *
     * @param string $password The password to hash.
     * @return string The hashed password.
     */
    public static function hashPassword(string $password): string
    {
        return password_hash($password, PASSWORD_DEFAULT);
    }

    /**
     * Verify a hashed password against the user's stored password.
     *
     * @param string $password      The password to verify.
     * @param string $userPassword  The user's stored hashed password.
     * @return bool True if the password is verified, false otherwise.
     */
    public static function verifyHashPassword(string $password, string $userPassword): bool
    {
        return password_verify($password, $userPassword);
    }
}
