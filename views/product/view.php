<?php
/** @var array $product */
/** @var array $comments */
/** @var array $models */
use models\User;

?>
<h1 class="mb-3 fw-normal">
    <?= $product['name'] ?>
</h1>
<div class="row mb-3">
    <div class="col-lg-9">
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
    <div class="col-lg-3">
        <div class="conteiner">
            <div class="col mb-3 mt-3">
                <strong class="h1">
                    <?= $product['price'] ?> ₴
                </strong>
            </div>

            <?php if (!empty($product['short_description'])): ?>
                <div class="col mb-3">
                    <?= $product['short_description'] ?>
                </div>
            <?php endif; ?>

            <div class="row mb-3">
                <div class="col-5 text-muted">
                    ДАТА ВИХОДУ
                </div>
                <div class="col-7">
                    <?= date("d M. Y", strtotime($product['release_date'])) ?>
                </div>
            </div>

            <div class="row mb-3">
                <div class="col-5 text-muted">
                    ВИДАВЕЦЬ
                </div>
                <div class="col-7">
                    <a href="/publisher/view/<?= $product['publisher_id'] ?>" class="text-decoration-none">
                        <?= $product['publisher'] ?>
                    </a>
                </div>
            </div>

            <div class="row mb-3">
                <div class="col-5 text-muted">
                    РЕЙТИНГ
                </div>
                <div class="col-7">
                    <?= $product['rating'] ?> %
                </div>
            </div>

            <div class="col mb-3">
                <form method="post" action="">
                    <button class="btn btn-lg btn-primary w-100" name="toBasket" value="toBasket">Придбати</button>
                </form>
            </div>
        </div>
    </div>
</div>
<div class="ps-2 border-start border-2">
    <div class="h4 text-muted">
        Категорії
    </div>
    <div class="">
        <div class="mb-2 h5">
            <?php foreach ($product['categories'] as $category): ?>
                <a href="/product?categories_id%5B%5D=<?= $category['id'] ?>"
                    class="badge bg-secondary text-decoration-none">
                    <?= $category['name'] ?>
                </a>
            <?php endforeach; ?>
        </div>
    </div>
</div>
<div class="row">
    <div class="col">
        <div class="accordion mb-3" id="accordionDescription">
            <div class="accordion-item">
                <h2 class="accordion-header" id="headingDescription">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                        data-bs-target="#collapseDescription" aria-expanded="true" aria-controls="collapseDescription">
                        Опис
                    </button>
                </h2>
                <div id="collapseDescription" class="accordion-collapse collapse" aria-labelledby="headingDescription"
                    data-bs-parent="#accordionDescription">
                    <div class="accordion-body">
                        <?= $product['description'] ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<?php if (User::isUserAuthentificated()): ?>
    <div class="card text-bg-light  mb-3">
        <div class="row g-0">
            <div class="col">
                <div class="card-body">
                    <form method="post" action="">
                        <div class="card-top mb-2">
                            <label class="card-title h3 me-2">Comment</label>
                            <input type="radio" class="btn-check" name="rating" id="rating-success" value="1" checked>
                            <label class="btn btn-outline-success" for="rating-success"><i
                                    class="fa-solid fa-thumbs-up fa-xl"></i></label>

                            <input type="radio" class="btn-check" name="rating" id="rating-danger" value="0">
                            <label class="btn btn-outline-danger" for="rating-danger"> <i
                                    class="fa-solid fa-thumbs-down fa-xl"></i></label>

                        </div>
                        <textarea class="form-control mb-2" rows="4" name="comment"></textarea>
                        <button class="btn btn-lg btn-outline-dark" name="sendComment" value="sendComment">
                            Send
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </div>
<?php endif; ?>


<?php foreach ($comments as $row): ?>
    <div class="card row g-0 mb-2">
        <div class="col">
            <div class="card-body">
                <div class="d-flex align-items-center justify-content-between">
                    <div class="d-flex">
                        <?php $filePath = 'files/user/' . $row['photo']; ?>
                        <?php if (is_file($filePath)): ?>
                            <img src="/<?= $filePath ?>" class="rounded-circle" width="32" height="32"
                                alt="<?= $row['name'] ?>">
                        <?php else: ?>
                            <img src="/static/images/default.jpg" class="rounded-circle" width="32" height="32" alt="default">
                        <?php endif; ?>
                        <label class="h2 card-title m-0 ms-2 me-2">
                            <?= $row['user'] ?>
                        </label>
                        <?php if ($row['rating'] == 1): ?>
                            <label class="btn btn-success"><i class="fa-solid fa-thumbs-up fa-xl"></i></label>
                        <?php else: ?>
                            <label class="btn btn-danger"><i class="fa-solid fa-thumbs-down fa-xl"></i></label>
                        <?php endif; ?>
                    </div>
                    <?php if (
                        (User::isUserAuthentificated() && User::getCurrentAuthentificatedUser()['id'] == $row['user_id'])
                        || User::isAdmin()
                    ): ?>
                        <form method="post" action="">
                            <button type="submit" class="btn-close" aria-label="Close" name="deleteComment"
                                value="<?= $row['id'] ?>"></button>
                        </form>
                    <?php endif; ?>
                </div>
                <p class="card-text h5">
                    <?= $row['comment'] ?>
                </p>
                <small class="text">
                    <?= date("d M. Y", strtotime($row['date'])) ?>
                </small>
            </div>
        </div>
    </div>
<?php endforeach; ?>