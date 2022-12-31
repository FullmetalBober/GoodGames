<?php
/** @var array $rows */
use models\User;

?>

<h2>Список категорій</h2>

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
                    </div>
                </div>
            </a>
        </div>
        <?php endforeach; ?>
</div>