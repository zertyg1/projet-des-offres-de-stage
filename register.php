<?php
$conn = mysqli_connect("localhost", "root", "", "stage");
if (isset($_POST['register'])) {
    if (
        !empty($_POST['nom']) && !empty($_POST['user'])
        && !empty($_POST['email']) && !empty($_POST['pass'])
    ) {
        $user = $_POST['user'];
        $pass = $_POST['pass'];
        $email = $_POST['email'];
        $nom = $_POST['nom'];
        $reqRegister = mysqli_query($conn, "INSERT INTO `login`(`username`, `password`, `email`, `nomComplet`) VALUES ('$user','$pass','$email','$nom')");
        $valide = "Inscription validée";
        header("refresh:2;url=login.php");
    } else {
        $msg = "Veuillez remplir tous les champs";
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
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="styleRegister.css">
    <title>Inscription</title>
</head>

<body>
    <header>
        <h1>Inscription</h1>
    </header>
    <main>
        <center>
            <form action="" method="POST">
                <div class="login">
                    <?php
                    if ($valide ?? null)
                        echo "<tr>
                                  <th colspan='2'><h4 style='color:green'>$valide</h4></th>
                              </tr>";
                    if ($msg ?? null)
                        echo "<tr>
                                   <th colspan='2'><h4 style='color:red'> $msg </h4></th>
                              </tr>";
                    ?>
                    <table border="">
                        <tr>
                            <td>Nom Complet</td>
                            <th><input type="text" placeholder="NOM & PRENOM" name="nom" value="<?php echo $_POST['nom'] ?? null ?>"></th>
                        </tr>
                        <tr>
                            <td>E-mail</td>
                            <th><input type="email" placeholder="EMAIL" name="email" value="<?php echo $_POST['email'] ?? null ?>"></th>
                        </tr>
                        <tr>
                            <td>Identifiant</td>
                            <th><input type="text" placeholder="USERNAME" name="user" value="<?php echo $_POST['user'] ?? null ?>"></th>
                        </tr>
                        <tr>
                            <td>Mot de passe</td>
                            <th><input type="password" placeholder="PASSWORD" name="pass" value="<?php echo $_POST['pass'] ?? null ?>"></th>
                        </tr>
                        <tr>
                            <th><input type="submit" value="S'inscrire" name="register"></th>
                        </tr>
                        <tr>
                            <td>Déjà inscrit ?</td>
                        </tr>
                    </table>
                    <a href="login.php">Connectez-vous</a>

                </div>
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