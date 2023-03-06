<?php
$reqAdmin=mysqli_query($conn,"SELECT * FROM login where username = 'ADMIN'");
$resRowLog=mysqli_fetch_row($reqAdmin);   
session_start();     
if($resRowLog[0]!=$_SESSION['user']&& $resRowLog[1]!=$_SESSION['password']){
    header("location:login.php");
}
if(isset($_POST['logout'])){
    session_destroy();
    header("location:login.php");  
}
?>