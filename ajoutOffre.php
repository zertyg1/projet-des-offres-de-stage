<?php
$conn=mysqli_connect("localhost","root","","stage");
if(isset($_POST['ajouter'])){
    if(!empty($_POST['nomEnt']) && !empty($_POST['ville'])  &&!empty($_POST['codePostal'])
&&!empty($_POST['mStage']) &&!empty($_POST['email']) &&!empty($_POST['tele']) ){
    if(preg_match("#^[0-9]{5}$#",$_POST['codePostal']) && preg_match('#(0|\+33)[1-9]( *[0-9]{2}){4}#',$_POST['tele'])){
        $nomEnt=$_POST['nomEnt'];
        $ville=$_POST['ville'];
        $code=$_POST['codePostal'];
        $maitre=$_POST['mStage'];
        $mail=$_POST['email'];
        $tele=$_POST['tele'];
        $insert=mysqli_query($conn,"INSERT INTO `offre`(`nomEnt`, `ville`, `codePostal`, `maitreStg`, `mail`, `telephone`) VALUES ('$nomEnt','$ville','$code','$maitre','$mail','$tele')");
        header("location:listeAdmin.php");
    }
}else $msg= "<script>
var msg=document.getElementById('msg');
function message(){
    msg.innerHTML='remplir les cases avec les donnees correctes';
    setTimeout(()=>{
    msg.innerHTML='';
    },3000)
}
message();
</script>";
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    
<a href="listeAdmin.php">liste des Offres</a>
    <form action="" method="post">
    <center>
        <h1>Ajouter une offre</h1>
        <table border="">
            <tr>
                <th>Entreptrise de stage</th>
                <th>Ville</th>
                <th>Code Postal</th>
                <th>Maitre de stage</th>
                <th>Adresse mail de maitre de stage</th>
                <th>Téléphone</th>
            </tr>
            <tr>
                <td><input type='text' name='nomEnt'></td>
                <td><input type='text' name='ville'></td>
                <td><input type='text' name='codePostal'></td>
                <td><input type='text' name='mStage'></td>
                <td><input type="email" style="width: 280px" name='email'></td>
                <td><input type='text' name='tele'></td>
            </tr>
        </table>
        <input type="submit" value="Ajouter" name="ajouter">
        <h3 id="msg" style="color: red;"><?php echo $msg??null ?></h3>
    </center>
    </form>
</body>
</html>