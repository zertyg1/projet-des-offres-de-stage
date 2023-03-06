<?php
session_start();
$conn = mysqli_connect("localhost", "root", "", "stage");
$reqAdmin = mysqli_query($conn, "SELECT * FROM login where username = 'ADMIN'");
$resRowLog = mysqli_fetch_row($reqAdmin);
$reqLogin = mysqli_query($conn, "SELECT * FROM login where username != 'ADMIN'");
$resLogin = mysqli_fetch_all($reqLogin);
if (isset($_POST['user'])) {
    if ($_POST['user'] != "" && isset($_POST['pass'])) {
        $user = trim($_POST['user']);
        if ($user === "$resRowLog[0]" && $_POST['pass'] === "$resRowLog[1]") {
            $_SESSION['user'] = trim($user);
            $_SESSION['password'] = $_POST['pass'];
            header("location:listeAdmin.php");
        }
        foreach ($resLogin as $res) {
            if ($user === "$res[0]" && $_POST['pass'] === "$res[1]") {
                $_SESSION['user'] = trim($user);
                $_SESSION['password'] = $_POST['pass'];
                header("location:listeUser.php");
            } else {
                $msg = "<script>
                var msg=document.getElementById('msg');
                function message(){
                    msg.innerHTML='authentification invalide';
                    setTimeout(()=>{
                    msg.innerHTML='';
                    },3000)
                }
                message();
                </script>";
            }
        }
    } else {
        $msg = "<script>
    var msg=document.getElementById('msg');
    function message(){
        msg.innerHTML='authentification invalide';
        setTimeout(()=>{
        msg.innerHTML='';
        },3000)
    }
    message();
    </script>";
    }
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="styleRegister.css">
    <title>Connexion</title>
</head>

<body>
    <center>
        <h1>Connexion</h1>
        <form action="" method="POST">
            <div class="login">
                <table border="">
                    <tr>
                    <td>Identifiant</td>
                    <th><input type="text" placeholder="Identifiant" name="user"></th>
                    </tr>
                    <tr>
                    <td><span>Mot de passe</span></td>
                    <th><input type="password" placeholder="Mot de passe" name="pass"></th>
                    </tr>
                    <tr>
                    <th><input type="submit" value="Se connecter"></th>
                    </tr>
                    <tr>
                    <td name="pasInscrit">Vous n'êtes pas encore inscrit ?</td>
                    </tr>
                </table>
                <a href="register.php">Créez votre compte</a><br>
            </div>
            <h4 id="msg" style="color: red;"><?php echo $msg ?? null ?></h4>
    </center>
    </form>
    <footer>
        <div class="BasDePage">
            " Réalisé par : "
            <strong>Victor ROBILLARD</strong>,
            <strong>Abdellah ADANSAR</strong>
            <br>
            " Pour le projet : "
            <strong>Liste des offres de stage</strong>
            <br>
            "Supervisé par : "
            <strong> Mme Hadhoum BOUKACHOUR </strong>
        </div>
    </footer>
</body>

</html>