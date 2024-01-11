<?php

namespace App\Controllers;

use App\BaseController;
use App\Models\UserModel;
use App\utils\SecurityTool;
use App\utils\SessionTool;
use App\utils\ValidationTool;
use JetBrains\PhpStorm\NoReturn;


class UserController extends BaseController
{

    /**
     * Authenticate a user by checking the provided credentials.
     *
     * @param string $email The user's email address.
     * @param string $password The user's password.
     * @return UserModel|null  Returns the authenticated user or null if authentication fails.
     */

    protected function authentificate(string $email, string $password): UserModel|null
    {
        $user = new UserModel();
        if ($user->getUserByEmail($email)) {

            if (SecurityTool::verifyHashPassword($password, $user->getPassword())) {
                return $user;
            }
        }
        return null;
    }


    /**
     * Register a new user in the database.
     *
     * @param string $username The username of the user to be registered.
     * @param string $email The email address of the user to be registered.
     * @param string $password The password of the user to be registered.
     * @return void
     */
    protected function registerUser(string $username, string $email, string $password): void
    {
        $user = new UserModel();
        $passwordHash = SecurityTool::hashPassword($password);
        $user->create($username, $email, $passwordHash);
    }


    /**
     * Handle the user login page.
     *
     * @return void
     */
    public function login(): void
    {
        $errorMessage = "";
        if (isset($_POST['email'], $_POST['password'])) {

            $email = htmlspecialchars($_POST['email']);
            $password = htmlspecialchars($_POST['password']);

            $user = $this->authentificate($email, $password);
            if ($user !== null) {
                SessionTool::createSession($user);
                header('Location: /');
                exit();
            }

            $errorMessage = "Identifiants Incorrect";
        }
        $this->render("auth/LoginView", [
            'currentPage' => 'login',
            'errorMessage' => $errorMessage
        ]);

    }

    /**
     * Handle the user registration page.
     *
     * @return void
     */
    public function register(): void
    {
        $errorMessage = "";

        if (isset($_POST['username'], $_POST['email'], $_POST['password'])) {

            $email = htmlspecialchars($_POST['email']);
            $username = htmlspecialchars($_POST['username']);
            $password = htmlspecialchars($_POST['password']);

            if (!ValidationTool::validateEmail($email)) {
                $errorMessage = "Votre email est invalide";
            } elseif (UserModel::userExists($email)) {
                $errorMessage = "Cette email existe déjà";
            } else {
                $this->registerUser($username, $email, $password);
                header('Location: /login');
                exit();
            }
        }

        $this->render("auth/RegisterView", [
            'errorMessage' => $errorMessage,
            'currentPage' => 'register']);
    }

    /**
     * Handle user logout.
     *
     * @return void
     */
    public function logout(): void
    {
        SessionTool::cleanSession();
        header('Location: /');
        exit();
    }
}
