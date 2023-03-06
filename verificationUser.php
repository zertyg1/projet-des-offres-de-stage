<?php
session_start();
$iteration = 0;
$reqLogin = mysqli_query($conn, "SELECT * FROM login where username != 'ADMIN'");
$resLogin = mysqli_fetch_all($reqLogin);
foreach ($resLogin as $res) {
    if ($res[0] != $_SESSION['user'] && $res[1] != $_SESSION['password']) {
        $iteration += 0;
    } else $iteration += 1;
}
if ($iteration == 0) {
    header("location:login.php");
}
if (isset($_POST['logout'])) {
    session_destroy();
    header("location:login.php");
}
?>