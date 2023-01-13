<?php
/** @var array|null $users */
core\Core::getInstance()->pageParams['title'] = 'Рівень доступу';
?>
<h1>Рівень доступу</h1>

<form method="post" action="">
    <div class="table-responsive">
        <table class="table table-hover">
            <thead>
                <tr>
                    <td>id</td>
                    <td>Фото</td>
                    <td>Пошта</td>
                    <td>Ім'я</td>
                    <td>Доступ</td>
                    <td>Редагувати</td>
                    <td>Видалити</td>
                </tr>
            </thead>
            <?php if (!empty($users)): ?>
                <tbody>
                    <?php foreach ($users as $row): ?>
                        <tr onclick="trHref(event, '/user/index/<?= $row['id'] ?>')" style="cursor:pointer;">
                            <td>
                                <?= $row['id'] ?>
                            </td>
                            <td>
                                <div class="ratio ratio-1x1">
                                    <?php $filePath = 'files/user/' . $row['photo']; ?>
                                    <?php if (is_file($filePath)): ?>
                                        <img src="/<?= $filePath ?>" class="card-img-top" alt="<?= $row['name'] ?>">
                                    <?php else: ?>
                                        <img src="/static/images/default.jpg" class="card-img-top" alt="default">
                                    <?php endif; ?>
                                </div>
                            </td>
                            <td><?= $row['login'] ?></td>
                            <td><?= $row['name'] ?></td>
                            <td>
                                <?= $row['access_level'] ?>
                            </td>
                            <td>
                                <!-- Button trigger modal -->
                                <button onclick='event.stopPropagation();' type="button" class="btn btn-primary"
                                    data-bs-toggle="modal" data-bs-target="#Modal<?= $row['id'] ?>" id="modal">
                                    Редагувати
                                </button>

                                <!-- Modal -->
                                <div onclick='event.stopPropagation();' class="modal fade" id="Modal<?= $row['id'] ?>" tabindex="-1"
                                    aria-labelledby="ModalLabel" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h1 class="modal-title fs-5" id="ModalLabel"><?= $row['name'] ?></h1>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                    aria-label="Close"></button>
                                            </div>
                                            <div class="modal-footer">
                                            <button type="submit" class="btn btn-outline-success" name="setAdmin" value="<?= $row['id'] ?>">
                                    Адмін
                                </button>
                                <button type="submit" class="btn btn-outline-danger" name="setUser" value="<?= $row['id'] ?>">
                                    Користувач
                                </button>
                                                <button type="button" class="btn btn-secondary"
                                                    data-bs-dismiss="modal">Закрити</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </td>
                            <td>
                                <button type="submit" class="btn btn-outline-danger" name="delete" value="<?= $row['id'] ?>">
                                    Видалити
                                </button>
                            </td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
            <?php endif; ?>
        </table>
    </div>
</form>