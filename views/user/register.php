<?php
/** @var array $errors */
/** @var array $model */
core\Core::getInstance()->pageParams['title'] = 'Реєстрація';
?>
<main class="form-signin w-100 m-auto">
    <form method="post" action="">
        <h1 class="h3 mb-3 fw-normal text-center">Реєстрація</h1>

        <?php if (!empty($errors)): ?>
            <div class="alert alert-danger text-start" role="alert">
                <ul class="m-0">
                    <?php foreach ($errors as $error): ?>
                        <li><?= $error ?></li>
                    <?php endforeach; ?>
                </ul> 
            </div>
        <?php endif; ?>

        <!-- login -->
        <div class="form-floating mb-2">
            <input type="email" class="form-control" name="login" id="login" value="<?= $model['login'] ?? null ?>"
                placeholder="name@example.com">
            <label for="login">Електронна пошта</label>
        </div>
        <!-- password -->
        <div class="form-floating mb-2">
            <input type="password" class="form-control" name="password" id="password"
                value="<?= $model['password'] ?? null ?>" placeholder="Password">
            <label for="password">Пароль</label>
        </div>
        <!-- password2 -->
        <div class="form-floating mb-2">
            <input type="password" class="form-control" name="password2" id="password2"
                value="<?= $model['password2'] ?? null ?>" placeholder="Password">
            <label for="password2">Пароль (ще раз)</label>
        </div>
        <!-- name -->
        <div class="form-floating mb-2">
            <input type="text" class="form-control" name="name" id="name" value="<?= $model['name'] ?? null ?>"
                placeholder="Name">
            <label for="name">Ім'я</label>
        </div>
        <!-- button -->
        <div class="form-floating">
            <div class="row justify-content-between">
                <div class="col text-start">
                    <button class="btn btn-lg btn-success" type="submit">Зареєструватися</button>
                </div>
                <div class="col text-end">
                    <a href="/user/login" class="btn btn-lg btn-outline-secondary">Увійти</a>
                </div>
            </div>
        </div>
    </form>
</main>