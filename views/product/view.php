<?php
/** @var array $product */
?>

<h1 class="h3 mb-3 fw-normal text-center">
    <?= $product['name'] ?>
</h1>
<div class="container">
    <div class="row">
        <div class="col-lg-6">

            <div id="carouselDark" class="carousel carousel-dark slide carousel-fade" data-bs-ride="carousel">

                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <div class="ratio ratio-16x9">
                            <?php $filePath = 'files/product/' . $product['photo']; ?>
                            <?php if (is_file($filePath)): ?>
                                <img src="/<?= $filePath ?>" class="d-block w-100" alt="<?= $product['name'] ?>">
                            <?php else: ?>
                                <img src="/static/images/default.jpg" class="d-block w-100" alt="default">
                            <?php endif; ?>
                        </div>
                    </div>
                    <?php foreach ($product['additionalPhotos'] as $additionalPhoto): ?>
                        <div class="carousel-item">
                            <div class="ratio ratio-16x9">
                                <?php $filePath = 'files/product/' . $additionalPhoto['photo']; ?>
                                <?php if (is_file($filePath)): ?>
                                    <img src="/<?= $filePath ?>" class="d-block w-100" alt="<?= $product['name'] ?>">
                                <?php else: ?>
                                    <img src="/static/images/default.jpg" class="d-block w-100" alt="default">
                                <?php endif; ?>
                            </div>
                        </div>
                    <?php endforeach; ?>
                </div>

                <button class="carousel-control-prev" type="button" data-bs-target="#carouselDark" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselDark" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>

        </div>
        <div class="col-lg-6">
            <div class="conteiner">
                <div class="row mb-3 mt-3">
                    <div class="col-4">
                        Ціна:
                    </div>
                    <div class="col-8">
                        <strong>
                            <?= $product['price'] ?> ₴
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
                        <!-- Придбати: -->
                    </div>
                    <!-- <div class="col-4"> -->
                    <!--  <div>
                            <input type="number" value="1" min="1" class="form-control mb-2" name="count" id="count">
                        </div> -->
                    <div class="col">
                        <button class="btn btn-primary">Придбати</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>