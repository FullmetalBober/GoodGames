<?php
/** @var array|null $basket */
?>
<h1>Кошик</h1>

<table class="table">
    <thead>
        <tr>
            <td>Фото</td>
            <td>Назва</td>
            <td>Ціна</td>
            <!-- <td>Кількість</td> -->
            <!-- <td>Сума</td> -->
            <td>Купити</td>
            <td>Вилучити</td>
        </tr>
    </thead>
    <?php if (!empty($basket['products'])): ?>

        <?php
        foreach ($basket['products'] as $row): ?>
            <tr>
                <td>
                    <div class="ratio ratio-16x9">
                        <?php $filePath = 'files/product/' . $row['product']['photo']; ?>
                        <?php if (is_file($filePath)): ?>
                            <img src="/<?= $filePath ?>" class="card-img-top" alt="<?= $row['product']['name'] ?>">
                        <?php else: ?>
                            <img src="/static/images/default.jpg" class="card-img-top" alt="default">
                        <?php endif; ?>
                    </div>
                </td>
                <td><?= $row['product']['name'] ?></td>
                <td>
                    <?= $row['product']['price'] ?> ₴
                </td>
                <!-- <td>
                    <?= $row['count'] ?>
                </td> -->
                <!-- <td>
                    <?= $row['product']['price'] * $row['count'] ?> ₴
                </td> -->
            </tr>
        <?php endforeach; ?>
        <tfoot>
            <tr>
                <th colspan="2">Всього:</th>
                <th>
                    <?= $basket['totalPrice'] ?> ₴
                </th>
            </tr>
        </tfoot>
    <?php endif; ?>
</table>