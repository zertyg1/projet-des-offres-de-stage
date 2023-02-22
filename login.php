<?php
session_start();
$conn=mysqli_connect("localhost","root","","stage");
$reqAdmin=mysqli_query($conn,"SELECT * FROM login where username = 'ADMIN'");
$resRowLog=mysqli_fetch_row($reqAdmin);
$reqLogin=mysqli_query($conn,"SELECT * FROM login where username != 'ADMIN'");
$resLogin=mysqli_fetch_all($reqLogin);
if(isset($_POST['user']) ){
    if($_POST['user'] !="" && isset($_POST['pass'])){
        $user=trim($_POST['user']);
        if($user==="$resRowLog[0]" && $_POST['pass']==="$resRowLog[1]"){
            $_SESSION['user']=trim($user);
            $_SESSION['password']=$_POST['pass'];
            header("location:listeAdmin.php");
        }
        foreach($resLogin as $res){
            if($user==="$res[0]" && $_POST['pass']==="$res[1]"){
                $_SESSION['user']=trim($user);
                $_SESSION['password']=$_POST['pass'];
                header("location:listeUser.php");
            }
            else{
                $msg="<script>
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
    }else{
    $msg="<script>
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
    <title>Document</title>
</head>
<body>
    <center>
    <h1>Les offres de stage</h1>
    <form action="" method="POST">
        <div class="login">
        <span>Username</span>
        <input type="text" placeholder="Username" name="user"><br>
        <span>Password</span>
        <input type="password" placeholder="password" name="pass"><br>
        <center><input type="submit" value="SIGN IN"><br></center>
        Pas un membre?<a href="register.php"> Créer un compte</a><br>
    </div>
    <h2 id="msg" style="color: red;"><?php echo $msg ?? null?></h2>
    </center>
    </form>
</body>
</html>