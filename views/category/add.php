<?php
/** @var array $model */
/** @var array $errors */
?>

<h2>Додавання категорії</h2>

<form method="post" action="" enctype="multipart/form-data">
    <div class="mb-3">
        <label for="name" class="form-label">Назва категорії</label>
        <input type="text" class="form-control" id="name" name="name" placeholder="" aria-describedby="nameHelp">

        <?php if (!empty($errors['name'])): ?>
            <div id="nameHelp" class="form-text text-danger">
                <?= $errors['name'] ?>
            </div>
        <?php endif; ?>
    </div>
    <div>
        <button class="btn btn-primary">Додати</button>
    </div>
</form>