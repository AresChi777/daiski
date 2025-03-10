<?php
if (!isset($_GET["id"])) {
    header("location: coaches.php");
}
$id = $_GET["id"];

require_once("../pdo_connect.php");

$sql = "SELECT coach .*
FROM coach
WHERE coach.id = $id
AND valid=1";

try {
    $stmt = $db_host->prepare($sql);
    $stmt->execute();
} catch (PDOException $e) {
    echo "錯誤訊息！<br/>";
    echo "Error: " . $e->getMessage() . "<br/>";
    $db_host = NULL;
    exit;
}
$row = $stmt->fetch();

$sql = "SELECT language.name 
FROM language_coach
JOIN language ON language_coach.language_id = language.id
WHERE language_coach.coach_id = $id
";
try {
    $stmt = $db_host->prepare($sql);
    $stmt->execute();
    $lan = $stmt->fetchAll(PDO::FETCH_ASSOC);
    // print_r($lan);
} catch (PDOException $e) {
    echo "錯誤訊息！<br/>";
    echo "Error: " . $e->getMessage() . "<br/>";
    $db_host = NULL;
    exit;
}

$sql = "SELECT license.name
FROM license_coach
JOIN license ON license_coach.license_id = license.id
WHERE license_coach.coach_id = $id
";

try {
    $stmt = $db_host->prepare($sql);
    $stmt->execute();
    $licenses = $stmt->fetchAll(PDO::FETCH_ASSOC);
    // print_r($licenses);
} catch (PDOException $e) {
    echo "錯誤訊息！<br/>";
    echo "Error: " . $e->getMessage() . "<br/>";
    $db_host = NULL;
    exit;
}

?>
<!doctype html>
<html lang="en">

<head>
    <title>coach</title>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta
        name="viewport"
        content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- Bootstrap CSS v5.2.1 -->
    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
        rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
        crossorigin="anonymous" />

    <?php include("./css.php") ?>
    <style>
        body{
            color: white !important;
            th{
                color: white !important;
            }
            td{
                color: white !important;
            }
        }
        /* 預設隱藏主要內容，僅顯示 loading 區塊 */
        #mainContent {
            display: none;
        }

        /* Loading 畫面 */
        #loadingOverlay {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: #07192F;
            display: flex;
            justify-content: center;
            align-items: center;
            z-index: 10000;
        }

        /* 轉圈動畫 */
        .spinner {
            width: 50px;
            height: 50px;
            border: 5px solid rgba(255, 255, 255, 0.3);
            border-top-color: #fff;
            border-radius: 50%;
            animation: spin 1s linear infinite;
        }

        @keyframes spin {
            from {
                transform: rotate(0deg);
            }

            to {
                transform: rotate(360deg);
            }
        }
    </style>
</head>

<body>
<div id="loadingOverlay">
    <div class="spinner"></div>
  </div>
    <div class="d-flex flex-column" id="mainContent">
        <?php include("./new_head_mod.php") ?>
        <div class="d-flex flex-row w-100 myPage">
            <?php include("./new_side_mod.php") ?>

            <div class="container">
                <div class="py-2">
                    <a href="coaches.php" class="btn btn-primary"><i class="fa-solid fa-tent-arrow-turn-left fa-fw"></i></a>
                </div>
                <div class="row g-3">
                    <div class="col">
                        <table class="table table-bordered">
                            <tr>
                                <th>id</th>
                                <td><?= $row["id"] ?></td>
                            </tr>
                            <tr>
                                <th>name</th>
                                <td><?= $row["name"] ?></td>
                            </tr>
                            <tr>
                                <th>email</th>
                                <td><?= $row["email"] ?></td>
                            </tr>
                            <tr>
                                <th>bio</th>
                                <td><?= $row["bio"] ?></td>
                            </tr>
                            <tr>
                                <th>experience</th>
                                <td><?= $row["experience"] ?></td>
                            </tr>
                            <tr>
                                <th>language</th>
                                <td>
                                    <?php foreach ($lan as $language): ?>
                                        <?= $language["name"] ?>
                                    <?php endforeach; ?>
                                </td>
                            </tr>
                            <tr>
                                <th>license</th>
                                <td>
                                    <?php foreach ($licenses as $license): ?>
                                        <?= $license["name"] ?><br>
                                    <?php endforeach; ?>
                                </td>
                            </tr>
                            <tr>
                                <th>profile photo</th>
                                <td>
                                    <div class="row row-cols-lg-4 rol-cols-mb-3 row-cols-sm-2 row-cols-lg-3">
                                        <div class="col">
                                            <div class="ratio ratio-1x1">
                                                <img src="../coach/images/<?= $row["profilephoto"] ?>" alt="<?= $row["name"] ?>" class="object-fit-cover">
                                            </div>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <th>created at</th>
                                <td><?= $row["createdat"] ?></td>
                            </tr>
                        </table>
                        <div class="py-2">
                            <a href="coach-edit.php?id=<?= $row["id"] ?>" class="btn btn-primary"><i class="fa-regular fa-pen-to-square fa-fw"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Bootstrap JavaScript Libraries -->
    <script
        src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
        crossorigin="anonymous"></script>

    <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
        integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
        crossorigin="anonymous"></script>

    <?php include("./js.php") ?>
    <script>
        window.addEventListener('load', function() {
            // 出場動畫：loading 畫面淡出
            gsap.to("#loadingOverlay", {
                opacity: 0,
                duration: 0.5,
                onComplete: function() {
                    document.getElementById("loadingOverlay").style.display = "none";
                }
            });

            //以下是自己網頁的入場動畫

            //       gsap.fromTo("#mainContent", 
            //   { rotation: -10, opacity: 0 }, 
            //   { rotation: 0, opacity: 1, duration: 0.8, ease: "back.out(1.5)" }
            // );
            //還不錯

            // gsap.fromTo("#mainContent", 
            //   { scale: 0.8, opacity: 0 }, 
            //   { scale: 1, opacity: 1, duration: 0.8, ease: "power2.out" }
            // );
            //普通

            // gsap.fromTo("#mainContent", 
            //   { filter: "blur(5px)", opacity: 0 }, 
            //   { filter: "blur(0px)", opacity: 1, duration: 0.8, ease: "power2.out" }
            // );


            // gsap.from("#mainContent", {
            //   y: 100,
            //   duration: 0.8,
            //   ease: "elastic.out(1, 0.5)"
            // });

            // let elements = document.querySelectorAll("#mainContent div");
            // elements.forEach(el => {
            //     gsap.from(el, {
            //         x: gsap.utils.random(-50, 50),
            //         y: gsap.utils.random(-50, 50),
            //         duration: 1,
            //         ease: "back.out(1.5)"
            //     });
            // });
            //不怎麼好看但很炫

            gsap.from("#mainContent", {
                rotateY: -90,
                duration: 1,
                ease: "back.out(1.7)"
            });
            //還不錯

        });
    </script> 
</body>

</html>