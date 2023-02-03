<?php
$conn=mysqli_connect("localhost","root","","stage");
$resut=mysqli_query($conn,"select * from offre");
$resultat=mysqli_fetch_all($resut);
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
    Entreprise:
    <select name="entreprise" id="ent">
    <option value="" disabled selected></option>
    <?php
    foreach($resultat as $res){
        echo"
            <option value='$res[0]'>$res[0]</option>
        ";
    }?>
    </select>
    <input type='submit' name='choisir'value='Choisir'>
    
    <?php
    if(isset($_POST['choisir']) && !empty($_POST['entreprise'])){
        echo '
        <table border="">
        <tr>
            <th>Entreptrise de stage</th>
            <th>Ville</th>
            <th>Code Postal</th>
            <th>Maitre de stage</th>
            <th style="width: 280px;">Adresse mail de maitre de stage</th>
            <th>Téléphone</th>
        </tr>
        <tr>';
        $ent=$_POST['entreprise'];
        $resEnt=mysqli_query($conn,"select * from offre where nomEnt='".$ent."'");
        $resultatEnt=mysqli_fetch_all($resEnt);
        foreach ($resultatEnt as $reEnt) {
        echo"
            <td><input type='hidden' name='nomEnt' value='$reEnt[0]'>$reEnt[0]</td>
            <td><input type='text' name='ville' value='$reEnt[1]'></td>
            <td><input type='text' name='codePostal' value='$reEnt[2]'></td>
            <td><input type='text' name='nomM' value='$reEnt[3]'></td>
            <td><input type='text' style='width:278px' name='email' value='$reEnt[4]'></td>
            <td><input type='text' name='tele' value='$reEnt[5]'></td>
            <td><input type='submit' name='modifier' value='Modifer'></td>
        </tr>
        </table>";}
    }
    if(isset($_POST['modifier'])){
        if(preg_match("#^[0-9]{5}$#",$_POST['codePostal']) && preg_match('#(0|\+33)[1-9]( *[0-9]{2}){4}#',$_POST['tele'])){
            $ent=$_POST['nomEnt'];
            $ville=$_POST['ville'];
            $cp=$_POST['codePostal'];
            $maitre=$_POST['nomM'];
            $email=$_POST['email'];
            $tele=$_POST['tele'];
            $update=mysqli_query($conn,"UPDATE `offre` SET `ville`='$ville',`codePostal`='$cp',`maitreStg`='$maitre',`mail`='$email',`telephone`='$tele' WHERE `nomEnt`='$ent'");
            header("location:listeAdmin.php");
        }
        else{
            $msg= "<script>
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
    }
    ?>
    
    <h3 id="msg" style="color: red;"><?php echo $msg??null ?></h3>
    </form>
</body>
</html>