<?php
$conn=mysqli_connect("localhost","root","","stage");
include("verificationAdmin.php");
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
    <form action="" method="post">
        <a href="ajoutOffre.php">Ajouter une offre</a>
        <a href="modifierOffre.php">Modifer une offre</a><br><br>
        <center><h2 style="color: blue;">Liste des stages</h2>
        <table border="">
            <tr>
                <th>Entreptrise de stage</th>
                <th>Ville</th>
                <th>Code Postal</th>
                <th>Maitre de stage</th>
                <th>Adresse mail de maitre de stage</th>
                <th>Téléphone</th>
                <th>Supprimer</th>
            </tr>
            <?php
            foreach($resultat as $res){
                echo "<tr>
                    <td><input type='hidden' name='nomEnt$res[6]' value='$res[0]'>$res[0]</td>
                    <td><input type='hidden' name='ville$res[6]' value='$res[1]'>$res[1]</td>
                    <td><input type='hidden' name='codePostal$res[6]' value='$res[2]'>$res[2]</td>
                    <td><input type='hidden' name='nomM$res[6]' value='$res[3]'>$res[3]</td>
                    <td><input type='hidden' name='email$res[6]' value='$res[4]'>$res[4]</td>
                    <td><input type='hidden' name='email$res[6]' value='$res[5]'>$res[5]</td>
                    <td><input type='submit' name='supprimer$res[6]' value='Supprimer'></td>
                </tr>";
                if(isset($_POST["supprimer$res[6]"])){
                    $delete=mysqli_query($conn,"DELETE FROM offre where id=$res[6]");
                    $msg= "<script>
                    var msg=document.getElementById('msg');
                    function message(){
                        msg.innerHTML='offre a été bien supprimer';
                        setTimeout(()=>{
                        msg.innerHTML='';
                        },3000)
                    }
                    message();
                    </script>";
                    header("refresh:3");
                }
        }
        ?>
        </table>
        <h3 id="msg" style="color: green;"><?php echo $msg??null ?></h3>
        <input type="submit" value="Deconnexion" name="logout"></center>
    </form>
</body>
</html>