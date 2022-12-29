<?php
/** @var string|null $error */
/** @var array $model */
core\Core::getInstance()->pageParams['title'] = 'Вхід на сайт';
?>

<?php if (!empty($error)): ?>
    <div class="message error"><?= $error ?></div>
<?php endif; ?>

<main class="form-signin w-100 m-auto text-center">
    <form method="post" action="">
        <!-- <img class="mb-4" src="/docs/5.3/assets/brand/bootstrap-logo.svg" alt="" width="72" height="57"> -->
        <!-- <h1 class="h3 mb-3 fw-normal">Please sign in</h1> -->
        <h1 class="h3 mb-3 fw-normal">Вхід</h1>
        <div class="form-floating">
            <input type="email" class="form-control" name="login" id="login" value="<?= $model['login'] ?? null ?>"
                placeholder="name@example.com">
            <label for="login">Електронна пошта</label>
        </div>
        <div class="form-floating">
            <input type="password" class="form-control" name="password" id="password"
                value="<?= $model['password'] ?? null ?>" placeholder="Password">
            <label for="password">Пароль</label>
        </div>

        <!-- <div class="checkbox mb-3">
      <label>
        <input type="checkbox" value="remember-me"> Remember me
      </label>
    </div> -->
        <button class="w-100 btn btn-lg btn-primary" type="submit">Увійти</button>
        <!-- <p class="mt-5 mb-3 text-muted">© 2017–2022</p> -->
    </form>
</main>