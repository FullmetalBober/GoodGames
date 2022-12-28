<?php
/**@var string $title */
/**@var string $content */
use models\User;

if (User::isUserAuthentificated())
    $user = User::getCurrentAuthentificatedUser();
else
    $user = null;
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= $siteName ?> | <?= $title ?></title>
    <style>
        header,
        footer,
        main {
            border: 1px solid black;
            padding: 10px;
        }

        .error {
            color: red;
        }
    </style>
</head>

<body>
    <header>
        Header
        <?php if (!empty($user)): ?>
            <?= $user['login'] ?? null ?>
            <a href="/user/logout">[Logout]</a>
        <?php endif ?>
    </header>

    <main>
        <?= $content ?>
    </main>

    <footer>
        Footer
    </footer>
</body>

</html>