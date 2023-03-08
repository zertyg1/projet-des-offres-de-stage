<?php
$conn = mysqli_connect("localhost", "root", "", "stage");
include("verificationAdmin.php");

// récupérer les paramètres de tri depuis l'URL
$sort = isset($_GET['sort']) ? $_GET['sort'] : '';
$order = isset($_GET['order']) ? $_GET['order'] : 'asc';

// définir les colonnes de tri autorisées
$allowed_columns = ['nomEnt', 'ville', 'codePostal', 'maitreStg', 'mail', 'telephone', 'annee'];

if (isset($_POST['search'])) {
    $search_term = $_POST['search_term'];
    $resut = mysqli_query($conn, "SELECT * FROM offre WHERE nomEnt LIKE '%$search_term%'  OR ville LIKE '%$search_term%' OR codePostal LIKE '%$search_term%' 
    OR maitreStg LIKE '%$search_term%' OR mail LIKE '%$search_term%' OR telephone LIKE '%$search_term%' OR annee LIKE '%$search_term%'");

    $resultat = mysqli_fetch_all($resut);
}

// récupérer les données à afficher depuis la base de données, en utilisant le tri demandé
else if ($sort != '' && $order != '') {
    $resut = mysqli_query($conn, "SELECT * FROM offre ORDER BY $sort $order");
    $resultat = mysqli_fetch_all($resut);
}

// Si rien n'est saisie dans la barre de recherche 
else {
    $resut = mysqli_query($conn, "SELECT * FROM offre");
    $resultat = mysqli_fetch_all($resut);
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="styleListe.css">
    <title>Liste des stages</title>
</head>

<body>
    <header>
        <div class="HautDePage">
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
    </header>
    <main>
        <form action="" method="post">
            <div class="navbar navbar-default">
                <div class="container-fluid">
                    <ul class="nav navbar-nav">
                        <li><a href="ajoutOffre.php" style="color: green; background-color: white;">Ajouter une offre</a></li>
                        <li><a href="modifierOffre.php" style="color: #eea236; background-color: white;">Modifer une offre</a></li>
                        <li><a href="logout.php" style="color: red; background-color: white;">Déconnexion</a></li>

                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Recherche" name="search_term"><br>
                            <button type="submit" class="btn btn-default" name="search"><span class="glyphicon glyphicon-search"></span></button>
                            <a href="listeAdmin.php">Retirer filtre(s)</a>
                        </div>
                    </ul>
                </div>
            </div>
            <center>
                <h2>Liste des stages</h2><br>
                <table class="table">
                    <tr>
                        <th><a href="?sort=nomEnt&order=<?php echo $sort == 'nomEnt' && $order == 'asc' ? 'desc' : 'asc'; ?>">Nom de l'entreprise du stage</a></th>
                        <th style="width: 10%;"><a href="?sort=ville&order=<?php echo $sort == 'ville' && $order == 'asc' ? 'desc' : 'asc'; ?>">Ville</a></th>
                        <th style="width: 10%;"><a href="?sort=codePostal&order=<?php echo $sort == 'codePostal' && $order == 'asc' ? 'desc' : 'asc'; ?>">Code Postal</a></th>
                        <th><a href="?sort=maitreStg&order=<?php echo $sort == 'maitreStg' && $order == 'asc' ? 'desc' : 'asc'; ?>">Maître de stage</a></th>
                        <th><a href="?sort=mail&order=<?php echo $sort == 'mail' && $order == 'asc' ? 'desc' : 'asc'; ?>">Adresse mail du maître de stage</a></th>
                        <th><a href="?sort=telephone&order=<?php echo $sort == 'telephone' && $order == 'asc' ? 'desc' : 'asc'; ?>">Téléphone</a></th>
                        <th><a href="?sort=annee&order=<?php echo $sort == 'annee' && $order == 'asc' ? 'desc' : 'asc'; ?>">Année</a></th>
                        <th>
                            <p>Supprimer</p>
                        </th>
                    </tr>
                    <?php
                    foreach ($resultat as $res) {
                        if (isset($_POST["supprimer$res[6]"])) {
                            $delete = mysqli_query($conn, "DELETE FROM offre where id=$res[6]");
                            echo '<script language="javascript">
                                alert("Offre supprimé");
                              </script>';
                            header("refresh:1");
                        }
                        echo "<tr>
                    <td><input type='hidden' name='nomEnt$res[6]' value='$res[0]'>$res[0]</td>
                    <td><input type='hidden' name='ville$res[6]' value='$res[1]'>$res[1]</td>
                    <td><input type='hidden' name='codePostal$res[6]' value='$res[2]'>$res[2]</td>
                    <td><input type='hidden' name='maitreStg$res[6]' value='$res[3]'>$res[3]</td>
                    <td><input type='hidden' name='mail$res[6]' value='$res[4]'>$res[4]</td>
                    <td><input type='hidden' name='telephone$res[6]' value='$res[5]'>$res[5]</td>
                    <td><input type='hidden' name='annee$res[6]' value='$res[7]'>$res[7]</td>
                    <td><input type='submit' class='btn btn-danger' name='supprimer$res[6]' value='Supprimer'></td>
                </tr>";
                    }
                    ?>
                </table>

                <h3 id="msg" style="color: green; background-color: rgb(195, 195, 195);"><?php echo $msg ?? null ?></h3>
            </center>

        </form>
    </main>
    <footer></footer>
</body>

</html>