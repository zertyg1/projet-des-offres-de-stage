<?php
$conn=mysqli_connect("localhost","root","","stage");
if(isset($_POST['register'])){
    if(!empty($_POST['nom'])&&!empty($_POST['user'])
    && !empty($_POST['email']) && !empty($_POST['pass'])){
        $user=$_POST['user'];
        $pass=$_POST['pass'];
        $email=$_POST['email'];
        $nom=$_POST['nom'];
        $reqRegister=mysqli_query($conn,"INSERT INTO `login`(`username`, `password`, `email`, `nomComplet`) VALUES ('$user','$pass','$email','$nom')");
        $valide="authentification valide";
        header("refresh:2;url=login.php");
    }else{
        $msg="Remplir tout les champs";
        header("refresh:2;url=register.php");
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>register</title>
</head>
<body>
    <center><h1>Register</h1>
    <form action="" method="post">
    <div class="login">
        <table border="">
            <tr>
                <td>Nom Complet</td>
                <th><input type="text" placeholder="NOM & PRENOM" name="nom" value="<?php echo $_POST['nom'] ?? null?>"></th>
            </tr>
            <tr>
                <td>Email</td>
                <th><input type="email" placeholder="EMAIL" name="email" value="<?php echo $_POST['email'] ?? null?>"></th>
            </tr>
            <tr>
                <td>Username</td>
                <th><input type="text" placeholder="USERNAME" name="user" value="<?php echo $_POST['user'] ?? null?>"></th>
            </tr>
            <tr>
                <td>Password</td>
                <th><input type="password" placeholder="PASSWORD" name="pass" value="<?php echo $_POST['pass'] ?? null?>"></th>
            </tr>
            <tr>
                <th colspan="2"><input type="submit" value="Register" name="register"></th>
            </tr>
            <?php 
            if($valide??null)
            echo"<tr>
            <th colspan='2'><h3 style='color:green'>$valide</h3></th>
            </tr>";
            if($msg??null)
            echo "<tr>
            <th colspan='2'><h3 style='color:red'> $msg </h3></th>
            </tr>";?>
        </table>
        <a href="login.php">Login</a>
    </div>
    </form>
    </center>
</body>
</html>