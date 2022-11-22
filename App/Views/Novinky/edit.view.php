<?php /* @var \App\Models\Novinka $data */ ?>

<form method="post">
    <div class="mb-3">
        <label for="exampleFormControlInput1" class="form-label text-white">Nadpis</label>
        <input class="form-control" id="exampleFormControlInput1" placeholder="Nadpis" name="title" value="<?=$data->getTitle()?>">
    </div>
    <div class="mb-3">
        <label for="exampleFormControlTextarea1" class="form-label text-white">Text</label>
        <textarea class="form-control" id="exampleFormControlTextarea1" placeholder="Text" rows="3" name="text"><?=$data->getText()?></textarea>
    </div>
    <div class="mb-3">
        <button type="submit" class="btn btn-primary">Upraviť</button>
    </div>
</form>