<?php
/** @var array|null $rows */
use models\User;

?>
<h1 class="h3 mb-3 fw-normal">Список товарів</h1>

<?php if (User::isAdmin()): ?>
    <div class="mb-3">
        <a href="/product/add" class="btn btn-success">Додати товар</a>
    </div>
<?php endif; ?>

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