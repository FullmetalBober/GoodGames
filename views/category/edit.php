<?php
/** @var array $category */
/** @var array $model */
/** @var array $errors */
?>

<h2>Редагування категорії</h2>

<form method="post" action="" enctype="multipart/form-data">
    <div class="mb-3">
        <label for="name" class="form-label">Назва категорії</label>
        <input type="text" class="form-control" id="name" name="name" placeholder="" value="<?= $category['name'] ?>">

        <?php if (!empty($errors['name'])): ?>
            <div id="nameHelp" class="form-text text-danger">
                <?= $errors['name'] ?>
            </div>
            <?php endif; ?>
    </div>

    <div class="col-3">
        <div class="ratio ratio-16x9">
            <?php $filePath = 'files/category/' . $category['photo']; ?>
            <?php if (is_file($filePath)): ?>
                <img src="/<?= $filePath ?>" class="card-img-top img-thumbnail" alt="<?= $category['name'] ?>">
                <?php else: ?>
                <img src="/static/images/default.jpg" class="card-img-top img-thumbnail" alt="default">
                <?php endif; ?>
        </div>
    </div>

    <div class="mb-3">
        <label for="file" class="form-label">Файл з фотографією для категорії</label>
        <input type="file" class="form-control" id="file" name="file" accept="imaje/jpeg">
    </div>
    <div>
        <button class="btn btn-primary">Зберегти</button>
    </div>
</form>