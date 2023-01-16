<?php
/** @var array|null $rows */
/** @var array $categories */
use models\User;
core\Core::getInstance()->pageParams['title'] = 'Товари';
?>
<h1 class="h3 mb-3 fw-normal">Список товарів</h1>

<?php if (User::isAdmin()): ?>
    <div class="mb-3">
        <a href="/product/add" class="btn btn-success">Додати товар</a>
    </div>
<?php endif; ?>

<form method="get" action="">
    <div class="row mb-5">
        <div class="col-md-10 order-2 order-md-1">
            <div class="row row-cols-2 row-cols-md-4 g-4 cards-list">
                <?php foreach ($rows as $row): ?>
                    <?php if ($row['visible'] == 1 || User::isAdmin()): ?>
                        <div class="col">
                            <div class="card h-100 <?= $row['visible'] == 2 ? 'bg-warning' : null ?>"
                                onclick="trHref(event, '/product/view/<?= $row['id'] ?>')" style="cursor:pointer;">
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
                                    <h6 class="card-title"><?= $row['price'] ?> ₴</h6>
                                    <?php if (User::isAdmin()): ?>
                                        <a href="/product/edit/<?= $row['id'] ?>" class="btn btn-outline-primary">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                                class="bi bi-pencil" viewBox="0 0 16 16">
                                                <path
                                                    d="M12.146.146a.5.5 0 0 1 .708 0l3 3a.5.5 0 0 1 0 .708l-10 10a.5.5 0 0 1-.168.11l-5 2a.5.5 0 0 1-.65-.65l2-5a.5.5 0 0 1 .11-.168l10-10zM11.207 2.5 13.5 4.793 14.793 3.5 12.5 1.207 11.207 2.5zm1.586 3L10.5 3.207 4 9.707V10h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.293l6.5-6.5zm-9.761 5.175-.106.106-1.528 3.821 3.821-1.528.106-.106A.5.5 0 0 1 5 12.5V12h-.5a.5.5 0 0 1-.5-.5V11h-.5a.5.5 0 0 1-.468-.325z" />
                                            </svg>
                                        </a>
                                        <a href="/product/delete/<?= $row['id'] ?>" class="btn btn-outline-danger">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                                class="bi bi-trash" viewBox="0 0 16 16">
                                                <path
                                                    d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z" />
                                                <path fill-rule="evenodd"
                                                    d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z" />
                                            </svg>
                                        </a>
                                    <?php endif; ?>
                                </div>
                            </div>
                        </div>
                    <?php endif; ?>
                <?php endforeach; ?>
            </div>
        </div>
        <div class="col-md-2 order-1 order-md-2">
            <!-- sortBy -->
            <div class="mb-3">
                <select name="sortBy" id="sortBy" class="form-control">
                    <option value="date" <?php
                    if (!empty($model['sortBy']) && $model['sortBy'] == 'date')
                        echo 'selected';
                    ?>>Дата</option>
                    <option value="price" <?php
                    if (!empty($model['sortBy']) && $model['sortBy'] == 'price')
                        echo 'selected';
                    ?>>Ціна</option>
                    <option value="name" <?php
                    if (!empty($model['sortBy']) && $model['sortBy'] == 'name')
                        echo 'selected';
                    ?>>Назва</option>
                </select>
            </div>
            <!-- search -->
            <div class="mb-3">
                <input type="search" class="form-control" placeholder="Пошук..." aria-label="Search" name="name"
                    id="name" value="<?= $model['name'] ?? null ?>">
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
            <div class="mb-3 price-value text-center">Будь-яка ціна</div>
            <!-- submit -->
            <div>
                <button class="btn btn-primary">Пошук</button>
            </div>
        </div>
    </div>

    <nav aria-label="Page navigation example">
        <ul class="pagination justify-content-center">
            <li class="page-item">
                <button type="submit" class="page-link <?php if ($model['page'] == 1)
                    echo 'disabled'; ?>" aria-label="Previous" value="1" name="page">
                    <span aria-hidden="true">
                        << </span>
                </button>
            </li>
            <li class="page-item">
                <button type="submit" class="page-link <?php if ($model['page'] == 1)
                    echo 'disabled'; ?>" aria-label="Previous" value="<?= $model['page'] - 1 ?>" name="page">
                    <span aria-hidden="true">
                        < </span>
                </button>
            </li>
            <?php
            $paginationCount = 3;
            $paginationStart = $model['page'] - $paginationCount < 1 ? 1 : $model['page'] - $paginationCount;
            $paginationEnd = $model['page'] + $paginationCount > $model['pageCount'] ? $model['pageCount'] : $model['page'] + $paginationCount;
            for ($i = $paginationStart; $i <= $paginationEnd; $i++): ?>
                <li class="page-item"><input type="submit" class="page-link <?php if ($model['page'] == $i)
                    echo 'active'; ?>" value="<?= $i ?>" name="page">
                </li>
            <?php endfor; ?>
            <li class="page-item">
                <button type="submit" class="page-link <?php if ($model['page'] == $model['pageCount'])
                    echo 'disabled'; ?>" aria-label="Next" value="<?= $model['page'] + 1 ?>" name="page">
                    <span aria-hidden="true"> > </span>
                </button>
            </li>
            <li class="page-item">
                <button type="submit" class="page-link <?php if ($model['page'] == $model['pageCount'])
                    echo 'disabled'; ?>" aria-label="Next" value="<?= $model['pageCount'] ?>" name="page">
                    <span aria-hidden="true"> >> </span>
                </button>
            </li>
        </ul>
    </nav>
</form>

<script defer src="js/textPriceRange.js"></script>
<script defer src="js/uncheckRadioButton.js"></script>