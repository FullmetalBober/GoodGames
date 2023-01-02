<?php
/** @var array $model */
/** @var array $errors */
/** @var array $categories */
/** @var int|null $category_id */
?>
<h2>Додавання товару</h2>

<form method="post" action="" enctype="multipart/form-data">
    <!-- name -->
    <div class="mb-3">
        <label for="name" class="form-label">Назва</label>
        <input type="text" class="form-control" id="name" name="name" placeholder="" aria-describedby="nameHelp">

        <?php if (!empty($errors['name'])): ?>
            <div id="nameHelp" class="form-text text-danger">
                <?= $errors['name'] ?>
            </div>
            <?php endif; ?>
    </div>
    <!-- category_id -->
    <div class="mb-3">
        <label for="category_id" class="form-label">Категорія</label>
        <select class="form-select" id="category_id" name="category_id" placeholder=""
            aria-describedby="category_idHelp">
            <?php foreach ($categories as $category): ?>
                <option <?php if ($category['id'] == $category_id)
                echo 'selected'; ?> value="<?= $category['id'] ?>">
                    <?= $category['name'] ?>
                </option>
                <?php endforeach; ?>
        </select>
        <?php if (!empty($errors['category_id'])): ?>
            <div id="category_idHelp" class="form-text text-danger">
                <?= $errors['category_id'] ?>
            </div>
            <?php endif; ?>
    </div>
    <!-- price -->
    <div class="mb-3">
        <label for="price" class="form-label">Ціна</label>
        <input type="number" class="form-control" id="price" name="price" placeholder="" aria-describedby="priceHelp">

        <?php if (!empty($errors['price'])): ?>
            <div id="priceHelp" class="form-text text-danger">
                <?= $errors['price'] ?>
            </div>
            <?php endif; ?>
    </div>
    <!-- count -->
    <div class="mb-3">
        <label for="count" class="form-label">Кількість</label>
        <input type="number" class="form-control" id="count" name="count" placeholder="" aria-describedby="countHelp">

        <?php if (!empty($errors['count'])): ?>
            <div id="countHelp" class="form-text text-danger">
                <?= $errors['count'] ?>
            </div>
            <?php endif; ?>
    </div>
    <!-- short_description -->
    <div class="mb-3">
        <label for="short_description" class="form-label">Короткий опис</label>
        <textarea class="form-control ckeditor" id="short_description" name="short_description" placeholder=""
            aria-describedby="short_descriptionHelp"></textarea>

        <?php if (!empty($errors['short_description'])): ?>
            <div id="short_descriptionHelp" class="form-text text-danger">
                <?= $errors['short_description'] ?>
            </div>
            <?php endif; ?>
    </div>
    <!-- description -->
    <div class="mb-3">
        <label for="description" class="form-label">Повний опис</label>
        <textarea class="form-control ckeditor" id="description" name="description" placeholder=""
            aria-describedby="descriptionHelp"></textarea>

        <?php if (!empty($errors['description'])): ?>
            <div id="descriptionHelp" class="form-text text-danger">
                <?= $errors['description'] ?>
            </div>
            <?php endif; ?>
    </div>
    <!-- visible -->
    <div class="mb-3">
        <label for="visible" class="form-label">Чи відображати товар?</label>
        <select class="form-select" id="visible" name="visible" placeholder="" aria-describedby="visibleHelp">
            <option value="1">так</option>
            <option value="0">ні</option>
        </select>
        <?php if (!empty($errors['visible'])): ?>
            <div id="visibleHelp" class="form-text text-danger">
                <?= $errors['visible'] ?>
            </div>
            <?php endif; ?>
    </div>
    <!-- file -->
    <div class="mb-3">
        <label for="file" class="form-label">Файли з фотографією для товару</label>
        <input type="file" multiple class="form-control" id="file" name="file" accept="imaje/jpeg">
    </div>
    <div>
        <button class="btn btn-primary">Додати</button>
    </div>
</form>

<script src="https://cdn.ckeditor.com/ckeditor5/35.4.0/classic/ckeditor.js"></script>
<script>
    let editors = document.querySelectorAll('.ckeditor');
    for (let editor of editors) {
        ClassicEditor
            .create(editor)
            .catch(error => {
                console.error(error);
            });
    }
</script>