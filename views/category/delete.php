<?php
/** @var array $category */
?>

<div class="alert alert-danger mt-3" role="alert">
  <h4 class="alert-heading">Видалити категорію "<?= $category['name'] ?>"?</h4>
  <hr>
  <p class="mb-0">
    <a href="/category/delete/<?= $category['id'] ?>/yes" class="btn btn-danger">Видалити</a>
    <a href="javascript:history.back()" class="btn btn-primary">Відмінити</a>
  </p>
</div>