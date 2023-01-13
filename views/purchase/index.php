<?php
/** @var array|null $purchase */
?>
<h1>Покупка</h1>

<form method="post" action="">
    <table class="table table-hover">
        <thead>
            <tr>
                <td>Фото</td>
                <td>Назва</td>
                <td>Ціна</td>
                <td colspan="2"></td>
            </tr>
        </thead>
        <?php if (!empty($purchase['products'])): ?>
            <tbody>
                <?php foreach ($purchase['products'] as $row): ?>
                    <tr onclick="trHref(event, '/product/view/<?= $row['product']['id'] ?>')" style="cursor:pointer;">
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
                        <td colspan="2"></td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
            <tfoot>
                <tr>
                    <th colspan="2">Всього:</th>
                    <th>
                        <?= $purchase['totalPrice'] ?> ₴
                    </th>
                    <th>
                        <button type="submit" class="btn btn-outline-primary">
                            Придбати
                        </button>
                    </th>
                </tr>
            </tfoot>
        <?php endif; ?>
    </table>
</form>