<?php

namespace App\Models;

use App\Core\Model;

class User extends Model
{
    public $id;
    public $login;
    public $hash;

    static public function setDbColumns()
    {
        return [ 'id' ,'login', 'hash' ];
    }

    static public function setTableName()
    {
        return "users";
    }

    public function __set(string $name, $value): void
    {
    }

    /**
     * @return mixed
     */
    public function getLogin()
    {
        return $this->login;
    }

    /**
     * @param mixed $login
     */
    public function setLogin($login): void
    {
        $this->login = $login;
    }

    /**
     * @return mixed
     */
    public function getHash()
    {
        return $this->hash;
    }

    /**
     * @param mixed $hash
     */
    public function setHash($hash): void
    {
        $this->hash = $hash;
    }

    /**
     * @return mixed
     */
    public function getId()
    {
        return $this->id;
    }
}