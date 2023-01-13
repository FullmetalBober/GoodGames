<?php
/** @var string|null $error */
/** @var array $model */
core\Core::getInstance()->pageParams['title'] = 'Увійти';
?>

<main class="form-signin w-100 m-auto text-center mt-5">
    <form method="post" action="">
        <h1 class="h3 mb-3 fw-normal text-start">УВІЙТИ</h1>
        
        <?php if (!empty($error)): ?>
            <div class="alert alert-danger text-start" role="alert">
                <ul class="m-0">
                        <li><?= $error ?></li>
                </ul> 
            </div>
        <?php endif; ?>

        <div class="form-floating mb-2">
            <input type="email" class="form-control" name="login" id="login" value="<?= $model['login'] ?? null ?>"
                placeholder="name@example.com">
            <label for="login">Електронна пошта</label>
        </div>
        <div class="form-floating mb-2">
            <input type="password" class="form-control" name="password" id="password"
                value="<?= $model['password'] ?? null ?>" placeholder="Password">
            <label for="password">Пароль</label>
        </div>

        <div class="form-floating">
            <div class="row justify-content-between">
                <div class="col text-start">
                    <button class="btn btn-lg btn-success" type="submit">Увійти</button>
                </div>
                <div class="col text-end">
                    <a href="/user/register" class="btn btn-lg btn-outline-secondary">Реєстрація</a>
                </div>
            </div>
        </div>
    </form>
</main>