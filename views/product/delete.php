<?php
/** @var array $product */
?>

<div class="alert alert-danger" role="alert">
  <h4 class="alert-heading">Видалити категорію "<?= $product['name'] ?>"?</h4>
  <p>Після видалення категорії, всі відповідні товари будуть потраплять до стандартної категорії <b>"Не визначено"</b>
  </p>
  <hr>
  <p class="mb-0">
    <a href="/product/delete/<?= $product['id'] ?>/yes" class="btn btn-danger">Видалити</a>
    <a href="/product" class="btn btn-primary">Відмінити</a>
  </p>
</div>