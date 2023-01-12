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
    <title>
        <?= $siteName ?> | <?= $title ?>
    </title>
    <link rel="icon" type="image/x-icon" href="/static/images/logo.png">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script async src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
        crossorigin="anonymous"></script>
    <script async src="https://kit.fontawesome.com/e25019c3dc.js" crossorigin="anonymous"></script>
    <!-- defer async -->
    <link rel="stylesheet" href="/themes/light/css/style.css">
</head>

<body>
    <svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
        <symbol id="home" viewBox="0 0 16 16">
            <path
                d="M8.354 1.146a.5.5 0 0 0-.708 0l-6 6A.5.5 0 0 0 1.5 7.5v7a.5.5 0 0 0 .5.5h4.5a.5.5 0 0 0 .5-.5v-4h2v4a.5.5 0 0 0 .5.5H14a.5.5 0 0 0 .5-.5v-7a.5.5 0 0 0-.146-.354L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.354 1.146zM2.5 14V7.707l5.5-5.5 5.5 5.5V14H10v-4a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5v4H2.5z">
            </path>
        </symbol>
        <symbol id="grid" viewBox="0 0 16 16">
            <path
                d="M1 2.5A1.5 1.5 0 0 1 2.5 1h3A1.5 1.5 0 0 1 7 2.5v3A1.5 1.5 0 0 1 5.5 7h-3A1.5 1.5 0 0 1 1 5.5v-3zM2.5 2a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3zm6.5.5A1.5 1.5 0 0 1 10.5 1h3A1.5 1.5 0 0 1 15 2.5v3A1.5 1.5 0 0 1 13.5 7h-3A1.5 1.5 0 0 1 9 5.5v-3zm1.5-.5a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3zM1 10.5A1.5 1.5 0 0 1 2.5 9h3A1.5 1.5 0 0 1 7 10.5v3A1.5 1.5 0 0 1 5.5 15h-3A1.5 1.5 0 0 1 1 13.5v-3zm1.5-.5a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3zm6.5.5A1.5 1.5 0 0 1 10.5 9h3a1.5 1.5 0 0 1 1.5 1.5v3a1.5 1.5 0 0 1-1.5 1.5h-3A1.5 1.5 0 0 1 9 13.5v-3zm1.5-.5a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3z">
            </path>
        </symbol>
        <symbol id="basket" viewBox="0 0 16 16">
            <path
                d="M0 2.5A.5.5 0 0 1 .5 2H2a.5.5 0 0 1 .485.379L2.89 4H14.5a.5.5 0 0 1 .485.621l-1.5 6A.5.5 0 0 1 13 11H4a.5.5 0 0 1-.485-.379L1.61 3H.5a.5.5 0 0 1-.5-.5zM3.14 5l.5 2H5V5H3.14zM6 5v2h2V5H6zm3 0v2h2V5H9zm3 0v2h1.36l.5-2H12zm1.11 3H12v2h.61l.5-2zM11 8H9v2h2V8zM8 8H6v2h2V8zM5 8H3.89l.5 2H5V8zm0 5a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0zm9-1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0z" />
        </symbol>
        <symbol id="category" viewBox="0 0 16 16">
            <path d="M6 4.5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm-1 0a.5.5 0 1 0-1 0 .5.5 0 0 0 1 0z" />
            <path
                d="M2 1h4.586a1 1 0 0 1 .707.293l7 7a1 1 0 0 1 0 1.414l-4.586 4.586a1 1 0 0 1-1.414 0l-7-7A1 1 0 0 1 1 6.586V2a1 1 0 0 1 1-1zm0 5.586 7 7L13.586 9l-7-7H2v4.586z" />
        </symbol>
        <symbol id="publisher" viewBox="0 0 16 16">
            <path
                d="M4 2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1Zm3 0a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1Zm3.5-.5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1ZM4 5.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1ZM7.5 5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1Zm2.5.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1ZM4.5 8a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1Zm2.5.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1Zm3.5-.5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1Z" />
            <path
                d="M2 1a1 1 0 0 1 1-1h10a1 1 0 0 1 1 1v14a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V1Zm11 0H3v14h3v-2.5a.5.5 0 0 1 .5-.5h3a.5.5 0 0 1 .5.5V15h3V1Z" />
        </symbol>
    </svg>

    <div class="container-fluid fixed-top">
        <header>
            <div class="px-3 py-2 text-bg-dark">
                <div class="container">
                    <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
                        <a href="/"
                            class="d-flex align-items-center my-2 my-lg-0 me-lg-auto text-white text-decoration-none">
                            <img src="/static/images/logo.png" alt="logo" width="70" height="52" class="me-2">
                            <h2 class="d-inline mt-2">GoodGames</h2>
                        </a>
                        <ul class="nav col-12 col-lg-auto my-2 justify-content-center my-md-0 text-small">
                            <li>
                                <a href="/main" class="nav-link text-secondary">
                                    <svg class="bi d-block mx-auto mb-1" width="24" height="24">
                                        <use xlink:href="#home"></use>
                                    </svg>
                                    Головна
                                </a>
                            </li>
                            <?php if (User::isAdmin()): ?>
                                <li>
                                    <a href="/category" class="nav-link text-white">
                                        <svg class="bi d-block mx-auto mb-1" width="24" height="24">
                                            <use xlink:href="#category"></use>
                                        </svg>
                                        Категорії
                                    </a>
                                </li>
                            <?php endif; ?>
                            <li>
                                <a href="/publisher" class="nav-link text-white">
                                    <svg class="bi d-block mx-auto mb-1" width="24" height="24">
                                        <use xlink:href="#publisher"></use>
                                    </svg>
                                    Видавці
                                </a>
                            </li>
                            <li>
                                <a href="/product" class="nav-link text-white">
                                    <svg class="bi d-block mx-auto mb-1" width="24" height="24">
                                        <use xlink:href="#grid"></use>
                                    </svg>
                                    Товари
                                </a>
                            </li>
                            <li>
                                <a href="/basket" class="nav-link text-white">
                                    <svg class="bi d-block mx-auto mb-1" width="24" height="24">
                                        <use xlink:href="#basket"></use>
                                    </svg>
                                    Кошик
                                </a>
                            </li>
                            <li>
                                <?php if (User::isUserAuthentificated()): ?>
                                    <div class="dropdown nav-link mt-2">
                                        <a href="#" class="d-block text-decoration-none dropdown-toggle show text-white"
                                            data-bs-toggle="dropdown" aria-expanded="true">
                                            <?php $filePath = 'files/user/' . $user['photo']; ?>
                                            <?php if (is_file($filePath)): ?>
                                                <img src="/<?= $filePath ?>" class="rounded-circle" width="32" height="32"
                                                    alt="<?= $user['name'] ?>">
                                            <?php else: ?>
                                                <img src="/static/images/default.jpg" class="rounded-circle" width="32"
                                                    height="32" alt="default">
                                            <?php endif; ?>
                                        </a>
                                        <ul class="dropdown-menu text-small" data-popper-placement="bottom-end"
                                            style="position: absolute; inset: 0px 0px auto auto; margin: 0px; transform: translate(0px, 34px);">
                                            <li><a class="dropdown-item"
                                                    href="/user/index/<?= User::getCurrentAuthentificatedUser()['id'] ?>">Профіль</a></li>
                                            <?php if (User::isSuperAdmin()): ?>
                                                <li><a class="dropdown-item" href="/user/access">Рівень доступу</a></li>
                                            <?php endif; ?>
                                            <li><a class="dropdown-item" href="/user/edit/<?= User::getCurrentAuthentificatedUser()['id'] ?>">Налаштування</a></li>

                                            <li>
                                                <hr class="dropdown-divider">
                                            </li>
                                            <li><a class="dropdown-item" href="/user/logout">Вийти</a></li>
                                        </ul>
                                    </div>

                                <?php else: ?>
                                    <a href="/user/login" class="btn btn-outline-light navbar-text mt-2">Увійти</a>
                                <?php endif ?>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </header>
    </div>

    <div class="container">
        <?= $content ?? null ?>
    </div>

    <div class="container-fluid footer">
        <footer class="py-3 my-4">
            <ul class="nav justify-content-center border-bottom pb-3 mb-3">
                <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Home</a></li>
                <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Features</a></li>
                <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Pricing</a></li>
                <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">FAQs</a></li>
                <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">About</a></li>
            </ul>
            <p class="text-center text-muted">© 2022-2023 GoodGames</p>
        </footer>
    </div>

</body>

</html>