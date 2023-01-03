<?php
/** @var array|null $categories */
use models\User;

?>
<h1>Категорії</h1>
<?php if (User::isAdmin()): ?>
    <div class="mb-3">
        <a href="/category/add" class="btn btn-success">Додати категорію</a>
    </div>
<?php endif; ?>
<table class="table">
    <thead>
        <tr>
            <td>#</td>
            <td>Назва</td>
            <td>Кількість товарів</td>
        </tr>
    </thead>
    <?php if (!empty($categories)): ?>

        <?php
        $index = 1;
        foreach ($categories as $row): ?>
            <tr>
                <td>
                    <?= $index ?>
                </td>
                <td><?= $row['name'] ?></td>
                <td>
                    <?= $row['count'] ?>
                </td>
            </tr>
            <?php
            $index++;
        endforeach; ?>
        <?php endif; ?>
</table>