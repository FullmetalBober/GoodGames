<?php
/** @var string|null $error */
/** @var array $model */
core\Core::getInstance()->pageParams['title'] = 'Вхід на сайт';
?>
<h1>Вхід на сайт</h1>

<?php if (!empty($error)): ?>
<div class="message error"><?=$error ?></div>
<?php endif; ?>

<form method="post" action="">
    <div>
        <label for="login">Логін:</label>
    </div>
    <div>
        <input type="email" name="login" id="login" value="<?= $model['login'] ?? null ?>">
    </div>
    <!--  -->
    <div>
        <label for="password">Пароль:</label>
    </div>
    <div>
        <input type="password" name="password" id="password" value="<?= $model['password'] ?? null ?>">
    </div>
    <!--  -->
    <div>
        <button>Увійти</button>
    </div>
</form>