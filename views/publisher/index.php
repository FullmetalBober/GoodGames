<?php
/** @var array $rows */
use models\User;

?>

<h2>Список видавців</h2>
<?php if (User::isAdmin()): ?>
    <div class="mb-3">
        <a href="/publisher/add" class="btn btn-success">Додати видавця</a>
    </div>
<?php endif; ?>

<form method="get" action="">
    <div class="row mb-5">
        <div class="col-md-10 order-2 order-md-1">
            <div class="row row-cols-2 row-cols-md-5 g-4 categories-list mb-5">
                <?php foreach ($rows as $row): ?>
                    <div class="col">
                        <div class="card h-100" onclick="window.location='/publisher/view/<?= $row['id'] ?>';"
                            style="cursor:pointer;">
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
                                    <a href="/publisher/edit/<?= $row['id'] ?>" class="btn btn-outline-primary"><svg
                                            xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                            class="bi bi-pencil" viewBox="0 0 16 16">
                                            <path
                                                d="M12.146.146a.5.5 0 0 1 .708 0l3 3a.5.5 0 0 1 0 .708l-10 10a.5.5 0 0 1-.168.11l-5 2a.5.5 0 0 1-.65-.65l2-5a.5.5 0 0 1 .11-.168l10-10zM11.207 2.5 13.5 4.793 14.793 3.5 12.5 1.207 11.207 2.5zm1.586 3L10.5 3.207 4 9.707V10h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.293l6.5-6.5zm-9.761 5.175-.106.106-1.528 3.821 3.821-1.528.106-.106A.5.5 0 0 1 5 12.5V12h-.5a.5.5 0 0 1-.5-.5V11h-.5a.5.5 0 0 1-.468-.325z" />
                                        </svg></a>
                                    <a href="/publisher/delete/<?= $row['id'] ?>" class="btn btn-outline-danger"><svg
                                            xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                            class="bi bi-trash" viewBox="0 0 16 16">
                                            <path
                                                d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z" />
                                            <path fill-rule="evenodd"
                                                d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z" />
                                        </svg></a>
                                <?php endif; ?>
                            </div>
                        </div>
                    </div>
                <?php endforeach; ?>
            </div>
        </div>
        <div class="col-md-2 order-1 order-md-2">
            <!-- sortBy -->
            <div class="mb-3">
                <select name="sortBy" id="sortBy" class="form-control">
                    <option value="date" <?php
                    if (!empty($model['sortBy']) && $model['sortBy'] == 'date')
                        echo 'selected';
                    ?>>Дата</option>
                    <option value="name" <?php
                    if (!empty($model['sortBy']) && $model['sortBy'] == 'name')
                        echo 'selected';
                    ?>>Назва</option>
                </select>
            </div>
            <!-- search -->
            <div class="mb-3">
                <input type="search" class="form-control" placeholder="Пошук..." aria-label="Search" name="name"
                    id="name" value="<?= $model['name'] ?? null ?>">
            </div>
            <!-- submit -->
            <div>
                <button class="btn btn-primary">Пошук</button>
            </div>
        </div>
    </div>

    <nav aria-label="Page navigation example">
        <ul class="pagination justify-content-center">
            <li class="page-item">
                <button type="submit" class="page-link <?php if ($model['page'] == 1)
                    echo 'disabled'; ?>" aria-label="Previous" value="1" name="page">
                    <span aria-hidden="true">
                        << </span>
                </button>
            </li>
            <li class="page-item">
                <button type="submit" class="page-link <?php if ($model['page'] == 1)
                    echo 'disabled'; ?>" aria-label="Previous" value="<?= $model['page'] - 1 ?>" name="page">
                    <span aria-hidden="true">
                        < </span>
                </button>
            </li>
            <?php
            $paginationCount = 3;
            $paginationStart = $model['page'] - $paginationCount < 1 ? 1 : $model['page'] - $paginationCount;
            $paginationEnd = $model['page'] + $paginationCount > $model['pageCount'] ? $model['pageCount'] : $model['page'] + $paginationCount;
            for ($i = $paginationStart; $i <= $paginationEnd; $i++): ?>
                <li class="page-item"><input type="submit" class="page-link <?php if ($model['page'] == $i)
                    echo 'active'; ?>" value="<?= $i ?>" name="page">
                </li>
            <?php endfor; ?>
            <li class="page-item">
                <button type="submit" class="page-link <?php if ($model['page'] == $model['pageCount'])
                    echo 'disabled'; ?>" aria-label="Next" value="<?= $model['page'] + 1 ?>" name="page">
                    <span aria-hidden="true"> > </span>
                </button>
            </li>
            <li class="page-item">
                <button type="submit" class="page-link <?php if ($model['page'] == $model['pageCount'])
                    echo 'disabled'; ?>" aria-label="Next" value="<?= $model['pageCount'] ?>" name="page">
                    <span aria-hidden="true"> >> </span>
                </button>
            </li>
        </ul>
    </nav>
</form>