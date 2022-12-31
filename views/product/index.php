<?php
use models\User;
?>
<h1 class="h3 mb-3 fw-normal">Список товарів</h1>

<?php if (User::isAdmin()): ?>
    <div class="mb-3">
        <a href="product/add" class="btn btn-success">Додати товар</a>
    </div>
<?php endif; ?>