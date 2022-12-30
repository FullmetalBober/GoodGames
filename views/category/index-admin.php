<?php
/** @var array $rows */
use models\User;

?>

<h2>Список категорій</h2>
<div class="mb-3">
    <?php if (User::isAdmin()): ?>
        <a href="category/add" class="btn btn-success">Додати категорію</a>
        <?php endif; ?>
</div>

<div class="row row-cols-1 row-cols-md-4 g-4 categories-list">
    <?php foreach ($rows as $row): ?>
        <div class="col">
            <a href="/category/view/<?= $row['id'] ?>" class="card-link">
                <div class="card">
                    <div class="ratio ratio-16x9">
                        <?php $filePath = 'files/category/' . $row['photo']; ?>
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
                    </div>
                    <div class="card-body">
                        <a href="/category/edit/<?= $row['id'] ?>" class="btn btn-primary">Редагувати</a>
                        <a href="/category/delete/<?= $row['id'] ?>" class="btn btn-danger">Видалити</a>
                    </div>
                </div>
            </a>
        </div>
        <?php endforeach; ?>
</div>