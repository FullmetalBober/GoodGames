<?php
/** @var array|null $basket */
?>
<h1>Кошик</h1>

<table class="table">
    <thead>
        <tr>
            <td>#</td>
            <td>Назва</td>
            <td>Ціна</td>
            <td>Кількість</td>
            <td>Сума</td>
        </tr>
    </thead>
    <?php if (!empty($basket['products'])): ?>
        
    <?php
    $index = 1;
    foreach ($basket['products'] as $row): ?>
        <tr>
            <td><?= $index ?></td>
            <td><?= $row['product']['name'] ?></td>
            <td><?= $row['product']['price'] ?> грн.</td>
            <td><?= $row['count'] ?></td>
            <td><?= $row['product']['price'] * $row['count'] ?></td>
        </tr>
        <?php
        $index++;
    endforeach; ?>
    <tfoot>
        <tr>
            <th colspan="4">Всього:</th>
            <th><?= $basket['totalPrice'] ?> грн.</th>
        </tr>
        <?php endif; ?>
</table>