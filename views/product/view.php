<?php
/** @var array $product */
?>

<h1 class="h3 mb-3 fw-normal text-center">
    <?= $product['name'] ?>
</h1>
<div class="container">
    <div class="row">
        <div class="col-6">
            <div class="ratio ratio-16x9">
                <?php $filePath = 'files/product/' . $product['photo']; ?>
                <?php if (is_file($filePath)): ?>
                    <img src="/<?= $filePath ?>" class="img-thumbnail" alt="<?= $product['name'] ?>">
                    <?php else: ?>
                    <img src="/static/images/default.jpg" class="img-thumbnail" alt="default">
                    <?php endif; ?>
            </div>
        </div>
        <div class="col-6">
            <div class="conteiner">
                <div class="row mb-3 mt-3">
                    <div class="col-4">
                        Ціна:
                    </div>
                    <div class="col-8">
                        <strong>
                            <?= $product['price'] ?> грн.
                        </strong>
                    </div>
                </div>
                <div class="row mb-3">
                    <div class="col-4">
                        Кількість:
                    </div>
                    <div class="col-8">
                        <strong>
                            <?= $product['count'] ?>
                        </strong>
                    </div>
                </div>
                <?php if (!empty($product['short_description'])): ?>
                    <div class="row mb-3">
                        <div class="col-4">
                            Короткий опис:
                        </div>
                        <div class="col-8">
                            <?= $product['short_description'] ?>
                        </div>
                    </div>
                    <?php endif; ?>
                <div class="row mb-3">
                    <div class="col-4">
                        Придбати:
                    </div>
                    <div class="col-4">
                        <div>
                            <input type="number" value="1" min="1" max="<?= $product['count'] ?>" class="form-control mb-2"
                                name="count" id="count">
                        </div>
                        <div>
                            <button class="btn btn-primary">Придбати</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>