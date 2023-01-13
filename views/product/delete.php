<?php
/** @var array $product */
core\Core::getInstance()->pageParams['title'] = 'Видалення товару';
?>

<div class="alert alert-danger mt-3" role="alert">
  <h4 class="alert-heading">Видалити товар "<?= $product['name'] ?>"?</h4>
  <hr>
  <p class="mb-0">
    <a href="/product/delete/<?= $product['id'] ?>/yes" class="btn btn-danger">Видалити</a>
    <a href="javascript:history.back()" class="btn btn-primary">Відмінити</a>
  </p>
</div>