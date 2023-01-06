<?php
/** @var array|null $rows */
/** @var array $categories */
use models\User;

?>
<h1 class="h3 mb-3 fw-normal">Список товарів</h1>

<?php if (User::isAdmin()): ?>
    <div class="mb-3">
        <a href="/product/add" class="btn btn-success">Додати товар</a>
    </div>
<?php endif; ?>

<div class="row">
    <div class="col-md-10 order-2 order-md-1">
        <div class="row row-cols-1 row-cols-md-4 g-4 categories-list">
            <?php foreach ($rows as $row): ?>
                <div class="col">
                    <a href="/product/view/<?= $row['id'] ?>" class="card-link">
                        <div class="card">
                            <div class="ratio ratio-16x9">
                                <?php $filePath = 'files/product/' . $row['photo']; ?>
                                <?php if (is_file($filePath)): ?>
                                    <img src="/<?= $filePath ?>" class="card-img-top" alt="<?= $row['name'] ?>">
                                <?php else: ?>
                                    <img src="/static/images/default.jpg" class="card-img-top" alt="default">
                                <?php endif; ?>
                            </div>
                            <div class="card-body">
                                <h5 class="card-title">
                                    <?= $row['name'] ?>
                                </h5>
                                <h6 class="card-title"><?= $row['price'] ?> ₴</h5>
                                    <?php if (User::isAdmin()): ?>
                                        <a href="/product/edit/<?= $row['id'] ?>" class="btn btn-primary">Редагувати</a>
                                        <a href="/product/delete/<?= $row['id'] ?>" class="btn btn-danger">Видалити</a>
                                    <?php endif; ?>
                            </div>
                        </div>
                    </a>
                </div>
            <?php endforeach; ?>
        </div>
    </div>

    <div class="col-md-2 order-1 order-md-2">
        <form method="get" action="">
            <div class="mb-3">
                <input type="search" class="form-control" placeholder="Пошук..." aria-label="Search" name="name"
                    id="name" value="<?= $model['name'] ?? null ?>">
            </div>

            <!-- publisher -->
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
                                            if (!empty($model['publisher_id']) && $model['publisher_id'] == $publisher['id'])
                                                echo 'checked';
                                            ?> value="<?= $publisher['id'] ?>">
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
                            data-bs-target="#collapseCategories" aria-expanded="true"
                            aria-controls="collapseCategories">
                            Список категорій
                        </button>
                    </h2>
                    <div id="collapseCategories" class="accordion-collapse collapse" aria-labelledby="headingCategories"
                        data-bs-parent="#accordionCategories">
                        <ul class="list-group">
                            <?php foreach ($categories as $category): ?>
                                <li class="list-group-item">
                                    <input type="checkbox" class="form-check-input me-1"
                                        id="category_<?= $category['id'] ?>" name="categories_id[]"
                                        value="<?= $category['id'] ?>" <?php
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
            <input type="range" class="form-range" min="0" max="520" step="40" name="price" id="price"
                value="<?= $model['price'] ?? 520 ?>">

            <div>
                <button class="btn btn-primary">Пошук</button>
            </div>
        </form>
    </div>
</div>