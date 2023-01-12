<?php
/** @var array $publisher */
/** @var array $model */
/** @var array $errors */
?>

<h2>Редагування видавця</h2>

<?php if (!empty($errors)): ?>
    <div class="alert alert-danger text-start" role="alert">
        <ul class="m-0">
            <?php foreach ($errors as $error): ?>
                <li><?= $error ?></li>
            <?php endforeach; ?>
        </ul>
    </div>
<?php endif; ?>

<form method="post" action="" enctype="multipart/form-data">
    <div class="mb-3">
        <label for="name" class="form-label">Назва видавця</label>
        <input type="text" class="form-control" id="name" name="name" placeholder="" value="<?= $publisher['name'] ?>">
    </div>

    <div class="col-3">
        <div class="ratio ratio-1x1">
            <?php $filePath = 'files/publisher/' . $publisher['photo']; ?>
            <?php if (is_file($filePath)): ?>
                <img src="/<?= $filePath ?>" class="card-img-top img-thumbnail" alt="<?= $publisher['name'] ?>">
            <?php else: ?>
                <img src="/static/images/default.jpg" class="card-img-top img-thumbnail" alt="default">
            <?php endif; ?>
        </div>
    </div>

    <div class="mb-3">
        <label for="file" class="form-label">Файл з фотографією для видавця</label>
        <input type="file" class="form-control" id="file" name="file" accept="imaje/jpeg">
    </div>
    <div>
        <button class="btn btn-primary">Зберегти</button>
    </div>
</form>