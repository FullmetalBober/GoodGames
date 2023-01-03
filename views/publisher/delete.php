<?php
/** @var array $publisher */
?>

<div class="alert alert-danger" role="alert">
  <h4 class="alert-heading">Видалити категорію "<?= $publisher['name'] ?>"?</h4>
  <p>Після видалення категорії, всі відповідні товари будуть потраплять до стандартної категорії <b>"Не визначено"</b></p>
  <hr>
  <p class="mb-0">
    <a href="/publisher/delete/<?= $publisher['id'] ?>/yes" class="btn btn-danger">Видалити</a>
    <a href="/publisher" class="btn btn-primary">Відмінити</a>
  </p>
</div>