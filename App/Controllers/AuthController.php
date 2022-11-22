<?php

namespace App\Controllers;

use App\Config\Configuration;
use App\Core\AControllerBase;
use App\Core\Responses\Response;
use App\Models\User;

/**
 * Class AuthController
 * Controller for authentication actions
 * @package App\Controllers
 */
class AuthController extends AControllerBase
{
    /**
     *
     * @return \App\Core\Responses\RedirectResponse|\App\Core\Responses\Response
     */
    public function index(): Response
    {
        return $this->redirect(Configuration::LOGIN_URL);
    }

    /**
     * Login a user
     * @return \App\Core\Responses\RedirectResponse|\App\Core\Responses\ViewResponse
     */
    public function login(): Response
    {
        $formData = $this->app->getRequest()->getPost();
        $logged = null;
        if (isset($formData['submit'])) {
            $logged = $this->app->getAuth()->login($formData['login'], $formData['password']);
            if ($logged) {
                return $this->redirect('?c=admin');
            }
        }

        $data = ($logged === false ? ['message' => 'Zlý login alebo heslo!'] : []);
        return $this->html($data);
    }

    public function checkLoginAndPassword($login, $password) : string
    {
        if (strlen($login) < 5) {
            return 'Meno musí mať aspoň 5 znakov.';
        }

        if (strlen($password) < 5) {
            return 'Heslo musí mať aspoň 5 znakov.';
        }

        if (strtolower($password) == $password) {
            return 'Heslo musí obsahovať aspoň jedno veľké písmeno.';
        }

        if (strtoupper($password) == $password) {
            return 'Heslo musí obsahovať aspoň jedno malé písmeno.';
        }

        if (!preg_match('~[0-9]+~', $password)) {
            return 'Heslo musí obsahovať aspoň jedno číslo.';
        }

        if (!preg_match('~[\~`!@#$%^&*()/_\-+={[}]|\\\:;"\'<,>.?]+~', $password)) {
            return 'Heslo musí obsahovať aspoň jeden znak.';
        }
        
        return "";
    }

    public function register(): Response
    {
        $formData = $this->app->getRequest()->getPost();
        if (isset($formData['submit'])) {
            $ret = $this->checkLoginAndPassword($formData['login'], $formData['password']);
            if ($ret != "") {
                $data = ['message' => $ret];
                return $this->html($data);
            }

            $u = new User();
            $u->login = $formData['login'];
            $u->hash = password_hash($formData['login'], PASSWORD_BCRYPT);
            $u->save();

            return $this->redirect('?c=novinky');
        }
        return $this->html();
    }

    /**
     * Logout a user
     * @return \App\Core\Responses\ViewResponse
     */
    public function logout(): Response
    {
        $this->app->getAuth()->logout();
        return $this->html();
    }
}