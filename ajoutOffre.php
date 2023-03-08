<?php
$conn = mysqli_connect("localhost", "root", "", "stage");
include("verificationAdmin.php");
$resut = mysqli_query($conn, "select * from offre");
$resultat = mysqli_fetch_all($resut);
if (isset($_POST['ajouter'])) {
    if (
        !empty($_POST['nomEnt']) && !empty($_POST['ville'])  && !empty($_POST['codePostal'])
        && !empty($_POST['maitreStg']) && !empty($_POST['mail']) && !empty($_POST['telephone']) && !empty($_POST['annee'])
    ) {
        if (preg_match("#^[0-9]{5}$#", $_POST['codePostal']) && preg_match('#(0|\+33)[1-9]( *[0-9]{2}){4}#', $_POST['telephone'])) {
            $nomEnt = $_POST['nomEnt'];
            $ville = $_POST['ville'];
            $code = $_POST['codePostal'];
            $maitre = $_POST['maitreStg'];
            $mail = $_POST['mail'];
            $telephone = $_POST['telephone'];
            $annee = $_POST['annee'];
            $insert = mysqli_query($conn, "INSERT INTO `offre`(`nomEnt`, `ville`, `codePostal`, `maitreStg`, `mail`, `telephone`, `annee`) VALUES ('$nomEnt','$ville','$code','$maitre','$mail','$telephone', '$annee')");
            echo '<script language="javascript">
                    alert("Offre ajouté");
                  </script>';
        }
    } else $msg = "<script>
                            var msg=document.getElementById('msg');
                            function message(){
                            msg.innerHTML='Vous devez remplir tous les champs';
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
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="style.css">
    <title>Ajouter une offre</title>
</head>

<body>
    <header>
        <div class="navbar navbar-default">
            <div class="container-fluid">
                <ul class="nav navbar-nav">
                    <li><a href="listeAdmin.php" style="color: #0f6bbd; background-color: white;">Liste des stages</a></li>
                    <li><a href="modifierOffre.php" style="color: #eea236; background-color: white;">Modifer une offre</a></li>
                    <li><a href="logout.php" style="color: red; background-color: white;">Déconnexion</a></li>
                </ul>
            </div>
        </div>
    </header>
    <main>
        <form action="" method="post">
            <center>
                <h1>Ajouter une offre</h1>
                <br>

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
                    <tr>
                        <td><input type='text' name='nomEnt'></td>
                        <td><input type='text' name='ville'></td>
                        <td><input type='text' name='codePostal'></td>
                        <td><input type='text' name='maitreStg'></td>
                        <td><input type="mail" name='mail'></td>
                        <td><input type='text' name='telephone'></td>
                        <td><input type='text' name='annee'></td>
                    </tr>
                </table>
                <input type="submit" value="Ajouter" class='btn btn-success' name="ajouter">
                <h3 id="msg" style="color: red;"><?php echo $msg ?? null ?></h3>

            </center>
        </form>
    </main>
    <footer>
        <br><br><br>
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