<?php
/** @var array $rows */
use models\User;

?>

<h2>Список категорій</h2>
<?php if (User::isAdmin()): ?>
    <div class="mb-3">
        <a href="/publisher/add" class="btn btn-success">Додати категорію</a>
    </div>
<?php endif; ?>

<div class="row row-cols-1 row-cols-md-4 g-4 categories-list">
    <?php foreach ($rows as $row): ?>
        <div class="col">
            <a href="/publisher/view/<?= $row['id'] ?>" class="card-link">
                <div class="card">
                    <div class="ratio ratio-1x1">
                        <?php $filePath = 'files/publisher/' . $row['photo']; ?>
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
                            <a href="/publisher/edit/<?= $row['id'] ?>" class="btn btn-primary">Редагувати</a>
                            <a href="/publisher/delete/<?= $row['id'] ?>" class="btn btn-danger">Видалити</a>
                            <?php endif; ?>
                    </div>
                </div>
            </a>
        </div>
        <?php endforeach; ?>
</div>