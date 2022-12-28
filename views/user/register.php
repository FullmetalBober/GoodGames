<?php
/** @var array $errors */
/** @var array $model */

core\Core::getInstance()->pageParams['title'] = 'Реєстрація на сайті';
?>
<h1>registerAction</h1>
<form method="post" action="">
    <div>
        <label for="login">Логін:</label>
    </div>
    <div>
        <input type="email" name="login" id="login" value="<?= $model['login'] ?? null ?>">

        <?php if (!empty($errors['login'])): ?>
        <span class="error"><?= $errors['login'] ?></span>
        <?php endif; ?>
    </div>
    <!--  -->
    <div>
        <label for="password">Пароль:</label>
    </div>
    <div>
        <input type="password" name="password" id="password" value="<?= $model['password'] ?? null ?>">

        <?php if (!empty($errors['password'])): ?>
        <span class="error"><?= $errors['password'] ?></span>
        <?php endif; ?>
    </div>
    <!--  -->
    <div>
        <label for="password2">Пароль (ще раз):</label>
    </div>
    <div>
        <input type="password" name="password2" id="password2" value="<?= $model['password2'] ?? null ?>">

        <?php if (!empty($errors['password2'])): ?>
        <span class="error"><?= $errors['password2'] ?></span>
        <?php endif; ?>
    </div>
    <!--  -->
    <div>
        <label for="lastname">Прізвище:</label>
    </div>
    <div>
        <input type="text" name="lastname" id="lastname" value="<?= $model['lastname'] ?? null ?>">

        <?php if (!empty($errors['lastname'])): ?>
        <span class="error"><?= $errors['lastname'] ?></span>
        <?php endif; ?>
    </div>
    <!--  -->
    <div>
        <label for="firstname">Ім'я:</label>
    </div>
    <div>
        <input type="text" name="firstname" id="firstname" value="<?= $model['firstname'] ?? null ?>">

        <?php if (!empty($errors['firstname'])): ?>
        <span class="error"><?= $errors['firstname'] ?></span>
        <?php endif; ?>
    </div>
    <!--  -->
    <div>
        <button>Зареєструватися</button>
    </div>
</form>