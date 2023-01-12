<?php
/** @var array $model */
/** @var array $errors */
/** @var array $publishers */
/** @var array $categories */
/** @var array $product */
if (empty($product['publisher_id']))
    $product['publisher_id'] = 0;
?>

<h2>Редагування продукту</h2>

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

    <!-- name -->
    <div class="mb-3">
        <label for="name" class="form-label">Назва</label>
        <input type="text" class="form-control" id="name" name="name" placeholder="" aria-describedby="nameHelp"
            value="<?= $model['name'] ?? null ?>">
    </div>
    <!-- publisher_id -->
    <div class="accordion mb-3" id="accordionPublisher">
        <div class="accordion-item">
            <h2 class="accordion-header" id="headingPublisher">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                    data-bs-target="#collapsePublisher" aria-expanded="true" aria-controls="collapsePublisher">
                    Список видавців
                </button>
            </h2>
            <div id="collapsePublisher" class="accordion-collapse collapse" aria-labelledby="headingPublisher"
                data-bs-parent="#accordionPublisher">
                <ul class="list-group">
                    <?php foreach ($publishers as $publisher): ?>
                        <li class="list-group-item">
                            <input class="form-check-input me-1" type="radio" name="publisher_id"
                                value="<?= $publisher['id'] ?>" id="publisher_<?= $publisher['id'] ?>" <?php
                                    if (!empty($model['publisher_id'])) {
                                        if ($model['publisher_id'] == $publisher['id'])
                                            echo 'checked';
                                    } else
                                        if ($publisher['id'] == $product['publisher_id'])
                                            echo 'checked';
                                    ?>
                                value="<?= $publisher['id'] ?>">
                            <label class="form-check-label stretched-link" for="publisher_<?= $publisher['id'] ?>">
                                <?= $publisher['name'] ?>
                            </label>
                        </li>
                    <?php endforeach; ?>
                </ul>
            </div>
        </div>
    </div>
    <!-- categories -->
    <div class="accordion mb-3" id="accordionCategories">
        <div class="accordion-item">
            <h2 class="accordion-header" id="headingCategories">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                    data-bs-target="#collapseCategories" aria-expanded="true" aria-controls="collapseCategories">
                    Список категорій
                </button>
            </h2>
            <div id="collapseCategories" class="accordion-collapse collapse" aria-labelledby="headingCategories"
                data-bs-parent="#accordionCategories">
                <ul class="list-group">
                    <?php foreach ($categories as $category): ?>
                        <li class="list-group-item">
                            <input type="checkbox" class="form-check-input me-1" id="category_<?= $category['id'] ?>"
                                name="categories_id[]" value="<?= $category['id'] ?>" <?php
                                  if (!empty($model['categories_id']) && in_array($category['id'], $model['categories_id']))
                                      echo 'checked';
                                  ?>>
                            <label class="form-check-label stretched-link" for="category_<?= $category['id'] ?>">
                                <?= $category['name'] ?>
                            </label>
                        </li>
                    <?php endforeach; ?>
                </ul>
            </div>
        </div>
    </div>
    <!-- price -->
    <div class="mb-3">
        <label for="price" class="form-label">Ціна</label>
        <input type="number" class="form-control" id="price" name="price" placeholder="" aria-describedby="priceHelp"
            value="<?= $model['price'] ?? null ?>">
    </div>
    <!-- short_description -->
    <div class="mb-3">
        <label for="short_description" class="form-label">Короткий опис</label>
        <textarea class="form-control" id="short_description" name="short_description" placeholder=""
            aria-describedby="short_descriptionHelp"><?= $model['short_description'] ?? null ?></textarea>
    </div>
    <!-- description -->
    <div class="mb-3">
        <label for="description" class="form-label">Повний опис</label>
        <textarea class="form-control ckeditor" id="description" name="description" placeholder=""
            aria-describedby="descriptionHelp"><?= $model['description'] ?? null ?></textarea>
    </div>
    <!-- visible -->
    <div class="mb-3">
        <label for="visible" class="form-label">Чи відображати товар?</label>
        <select class="form-select" id="visible" name="visible" placeholder="" aria-describedby="visibleHelp">
            <option value="1" <?php if ($model['visible'] == 1)
                echo 'selected' ?>>так</option>
                <option value="0" <?php if ($model['visible'] == 0)
                echo 'selected' ?>>ні</option>
            </select>
        </div>
        <!-- file -->

        <div class="col-3">
            <div class="ratio ratio-16x9">
            <?php
            if (empty($product['photo']))
                $product['photo'] = 'default.jpg';
            $filePath = 'files/product/' . $product['photo']; ?>
            <?php if (is_file($filePath)): ?>
                <img src="/<?= $filePath ?>" class="card-img-top img-thumbnail" alt="<?= $publisher['name'] ?>">
            <?php else: ?>
                <img src="/static/images/default.jpg" class="card-img-top img-thumbnail" alt="default">
            <?php endif; ?>
        </div>
    </div>

    <div class="mb-3">
        <label for="file" class="form-label">Файли з фотографією для товару</label>
        <input type="file" class="form-control" id="file" name="file" accept="imaje/jpeg">
    </div>
    <!-- additionalFiles -->

    <div class="col-3">
        <div id="carouselDark" class="carousel carousel-dark slide carousel-fade img-thumbnail" data-bs-ride="carousel">

            <div class="carousel-inner">

                <?php if (!empty($product['additionalPhotos'])): ?>
                    <?php foreach ($product['additionalPhotos'] as $additionalPhoto): ?>
                        <div class="carousel-item active">

                            <?php $filePath = 'files/product/' . $additionalPhoto['photo']; ?>
                            <?php if (is_file($filePath)): ?>
                                <img src="/<?= $filePath ?>" class="d-block w-100" alt="<?= $product['name'] ?>">
                            <?php else: ?>
                                <img src="/static/images/default.jpg" class="d-block w-100" alt="default">
                            <?php endif; ?>
                        </div>
                    <?php endforeach; ?>
                <?php else: ?>
                    <div class="carousel-item active">
                        <img src="/static/images/default.jpg" class="d-block w-100" alt="default">
                    </div>
                <?php endif; ?>
            </div>

            <button class="carousel-control-prev" type="button" data-bs-target="#carouselDark" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselDark" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </div>

    <div class="mb-3">
        <label for="additionalFiles" class="form-label">Додаткові фотографії</label>
        <input type="file" multiple class="form-control" id="additionalFiles" name="additionalFiles[]"
            accept="imaje/jpeg">
    </div>

    <div>
        <button class="btn btn-primary">Зберегти</button>
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