<?php
/* @var \App\Models\Novinka[] $data */
/* @var \App\Core\IAuthenticator $auth */
setlocale(LC_ALL, 'sk-SK');
?>

<div class="row mb-2">
    <div class="col-md-3">
        <?php if ($auth->isLogged()) { ?>
            <a href="?c=novinky&a=add" class="btn btn-primary">Pridať článok</a>
        <?php } ?>
    </div>

<?php for ($x = 0; $x < count($data); $x++) {
    $row = $data[$x];
    if ($x != 0) { ?>
    <div class="row mb-2">
        <div class="col-md-3">
        </div>
    <?php } ?>
        <div class="col-md-6">
            <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
                <div class="col p-4 d-flex flex-column position-static">
                    <h3 class="mb-0 text-white"><?=$row->getTitle()?></h3>
                    <div class="mb-1 text-white"><?=date_format(date_create($row->getDate()),"d.m.y")?></div>
                    <p class="mb-auto text-white"><?=$row->getText()?></p>
                </div>
                <?php if ($auth->isLogged()) { ?>
                    <div class="p-4 pt-0 pb-3 d-flex flex-column position-static">
                        <a href="?c=novinky&a=edit&id=<?=$row->getId()?>" class="btn btn-dark">Upraviť</a>
                    </div>
                    <div class="p-4 pt-0 d-flex flex-column position-static">
                        <a href="?c=novinky&a=delete&id=<?=$row->getId()?>" class="btn btn-danger">Vymazať</a>
                    </div>
                <?php } ?>
            </div>
        </div>
    </div>
<?php } ?>

    <div class="card text-center bg-dark sticky-bottom">
        <div class="card-footer text-white">
            Ochrana súkromia | Reklama | Kontakt
        </div>
    </div>


