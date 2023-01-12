<?php
/** @var array $user */
?>


<div class="alert alert-danger mt-3" role="alert">
    <h4 class="alert-heading">Видалити користувача "<?= $user['name'] ?>"?</h4>
    <hr>
    <p class="mb-0">
        <a href="/user/delete/<?= $user['id'] ?>/yes" class="btn btn-danger">Видалити</a>
        <a href="javascript:history.back()" class="btn btn-primary">Відмінити</a>
    </p>
</div>