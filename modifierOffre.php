<?php
$conn = mysqli_connect("localhost", "root", "", "stage");
include("verificationAdmin.php");
$resut = mysqli_query($conn, "select distinct nomEnt from offre");
$resultat = mysqli_fetch_all($resut);
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="style.css">
    <title>Modifier une offre</title>
</head>

<body>
    <header>
        <div class="navbar navbar-default">
            <div class="container-fluid">
                <ul class="nav navbar-nav">
                    <li><a href="listeAdmin.php" style="color: #0f6bbd; background-color: white;">Liste des stages</a></li>
                    <li><a href="ajoutOffre.php" style="color: green; background-color: white;">Ajouter une offre</a></li>
                    <li><a href="logout.php" style="color: red; background-color: white;">Déconnexion</a></li>
                </ul>
            </div>
        </div>
    </header>
    <main>
        <div class="container">
            <form action="" method="post">
                <h1>Modifier une offre</h1>
                <h3 name="entreprise">Entreprise:</h3>
                <select name="entreprise" id="nomEnt">
                    <option value="" disabled selected></option>
                    <?php
                    foreach ($resultat as $res) {
                        echo "
                <option value='$res[0]'>$res[0]</option>
            ";
                    } ?>
                </select>
                <input type='submit' class='btn btn-primary' name='choisir' value='Choisir'>
        </div>
        <center>
            <?php
            $ent = $_POST['entreprise'];
            $resEnt = mysqli_query($conn, "select * from offre where nomEnt='" . $ent . "'");
            $resultatEnt = mysqli_fetch_all($resEnt);
            foreach ($resultatEnt as $reEnt) {
            if (isset($_POST['choisir']) && !empty($_POST['entreprise'])) {
                echo '
            <table class="table">
            <tr>
                <th>Entreptrise de stage</th>
                <th>Ville</th>
                <th>Code Postal</th>
                <th>Maitre de stage</th>
                <th>Adresse mail de maitre de stage</th>
                <th>Téléphone</th>
                <th>Année</th>
                <th>Modifier</th>
            </tr>
            <tr>';
                
                    echo "
                <td><input type='hidden' name='nomEnt' value='$reEnt[0]'>$reEnt[0]</td>
                <td><input type='text' name='ville' value='$reEnt[1]'></td>
                <td><input type='text' name='codePostal' value='$reEnt[2]'></td>
                <td><input type='text' name='maitreStg' value='$reEnt[3]'></td>
                <td><input type='mail' name='mail' value='$reEnt[4]'></td>
                <td><input type='text' name='telephone' value='$reEnt[5]'></td>
                <td><input type='text' name='annee' value='$reEnt[7]'></td>
                <td><input type='submit' name='modifier' class='btn btn-warning' value='Modifer'></td>
            </tr>
            </table>";
                }
            }
            if (isset($_POST['modifier'])) {
                if (preg_match("#^[0-9]{5}$#", $_POST['codePostal']) && preg_match('#(0|\+33)[1-9]( *[0-9]{2}){4}#', $_POST['telephone'])) {
                    $ent = $_POST['nomEnt'];
                    $ville = $_POST['ville'];
                    $cp = $_POST['codePostal'];
                    $maitre = $_POST['maitreStg'];
                    $mail = $_POST['mail'];
                    $telephone = $_POST['telephone'];
                    $annee = $_POST['annee'];
                    $update = mysqli_query($conn, "UPDATE `offre` SET `ville`='$ville',`codePostal`='$cp',`maitreStg`='$maitre',`mail`='$mail',`telephone`='$telephone',`annee`='$annee' WHERE `nomEnt`='$ent'");
                    echo '<script language="javascript">
                         alert("Offre modifié");
                      </script>';
                }
            }
            ?>
            <h3 id="msg" style="color: red;"><?php echo $msg ?? null ?></h3>
        </center>
        </form>
    </main>
    <footer>
        <div class="BasDePage">
        Réalisé par :
            <strong>Victor ROBILLARD</strong>,
            <strong>Abdellah ADANSAR</strong>
            <br>
            Pour le projet :
            <strong>Liste des offres de stage</strong>
            <br>
            Supervisé par :
            <strong> Mme Hadhoum BOUKACHOUR </strong>
        </div>
    </footer>
</body>

</html>