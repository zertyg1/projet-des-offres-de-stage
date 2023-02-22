<?php
$conn=mysqli_connect("localhost","root","","stage");
include("verificationUser.php");
$resut=mysqli_query($conn,"select * from offre");
$resultat=mysqli_fetch_all($resut);
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
    <form action="" method="post">
    <center><h2 style="color: blue;">Liste des stages</h2><br>
        <table class="table">
            <tr>
                <th>Entreptrise de stage</th>
                <th>Ville</th>
                <th>Code Postal</th>
                <th>Maitre de stage</th>
                <th>Adresse mail de maitre de stage</th>
                <th>Téléphone</th>
                <th>Année</th>
            </tr>
            <?php
            foreach($resultat as $res){
                echo "<tr>
                    <td><input type='hidden' name='nomEnt' value='$res[0]'>$res[0]</td>
                    <td><input type='hidden' name='ville' value='$res[1]'>$res[1]</td>
                    <td><input type='hidden' name='codePostal' value='$res[2]'>$res[2]</td>
                    <td><input type='hidden' name='nomM' value='$res[3]'>$res[3]</td>
                    <td><input type='hidden' name='email' value='$res[4]'>$res[4]</td>
                    <td><input type='hidden' name='email' value='$res[5]'>$res[5]</td>
                    <td><input type='hidden' name='annee' value='$res[7]'>$res[7]</td>
                </tr>";
        }
        ?>
        </table><br><br>
        <input type="submit" value="Deconnexion" class='btn btn-success' name="logout">
    </form>
</body>
</html>