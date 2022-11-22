<?php

namespace App\Controllers;

use App\Core\AControllerBase;
use App\Core\Responses\Response;
use App\Models\Novinka;

class NovinkyController extends AControllerBase
{
    public function index(): Response
    {
        $novinky = Novinka::getAll();
        return $this->html($novinky);
    }

    public function add(): Response
    {
        $data = $this->request()->getPost();
        if (isset($data["title"])) {
            $novinka = new Novinka();
            $novinka->setTitle($data["title"]);
            $novinka->setText($data["text"]);
            $novinka->setDate(date('Y-m-d'));
            $novinka->save();
            return $this->redirect("?c=novinky");
        }
        return $this->html();
    }

    public function delete(): Response
    {
        $id = $this->request()->getValue("id");
        $novinka = Novinka::getOne($id);
        if ($novinka != null) {
            $novinka->delete();
        }

        return $this->redirect("?c=novinky");
    }

    public function edit(): Response
    {
        $id = $this->request()->getValue("id");
        $novinka = Novinka::getOne($id);
        $data = $this->request()->getPost();
        if ($novinka == null) {
            return $this->redirect("?c=novinky");
        }
        if (isset($data["title"])) {
            $novinka->setTitle($data["title"]);
            $novinka->setText($data["text"]);
            $novinka->save();
            return $this->redirect("?c=novinky");
        }
        return $this->html($novinka, "edit");
    }
}