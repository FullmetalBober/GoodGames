<?php
/** @var array $errors */
/** @var array $model */

core\Core::getInstance()->pageParams['title'] = 'Реєстрація на сайті';
?>
<main class="form-signin w-100 m-auto">
    <form method="post" action="">
        <h1 class="h3 mb-3 fw-normal text-center">Реєстрація</h1>
        <!-- login -->
        <div class="mb-3">
            <label for="login" class="form-label">Логін</label>
            <input type="email" class="form-control" name="login" id="login" value="<?= $model['login'] ?? null ?>"
                aria-describedby="emailHelp">

            <?php if (!empty($errors['login'])): ?>
                <div id="emailHelp" class="form-text text-danger">
                    <?= $errors['login'] ?>
                </div>
                <?php endif; ?>
        </div>
        <!-- password -->
        <div class="mb-3">
            <label for="password" class="form-label">Пароль</label>
            <input type="password" class="form-control" name="password" id="password"
                value="<?= $model['password'] ?? null ?>" aria-describedby="passwordHelp">

            <?php if (!empty($errors['password'])): ?>
                <div id="passwordHelp" class="form-text text-danger">
                    <?= $errors['password'] ?>
                </div>
                <?php endif; ?>
        </div>
        <!-- password2 -->
        <div class="mb-3">
            <label for="password2" class="form-label">Пароль (ще раз)</label>
            <input type="password" class="form-control" name="password2" id="password2"
                value="<?= $model['password2'] ?? null ?>" aria-describedby="password2Help">

            <?php if (!empty($errors['password2'])): ?>
                <div id="password2Help" class="form-text text-danger">
                    <?= $errors['password2'] ?>
                </div>
                <?php endif; ?>
        </div>
        <!-- name -->
        <div class="mb-3">
            <label for="name" class="form-label">Ім'я</label>
            <input type="text" class="form-control" name="name" id="name"
                value="<?= $model['name'] ?? null ?>" aria-describedby="nameHelp">

            <?php if (!empty($errors['name'])): ?>
                <div id="nameHelp" class="form-text text-danger">
                    <?= $errors['name'] ?>
                </div>
                <?php endif; ?>
        </div>
        <!-- button -->
        <div>
            <button class="btn btn-primary">Зареєструватися</button>
        </div>
    </form>
</main>