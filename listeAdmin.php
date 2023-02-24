<?php
$conn=mysqli_connect("localhost","root","","stage");
include("verificationAdmin.php");
if (isset($_POST['search'])) {
    $search_term = $_POST['search_term'];
    $resut = mysqli_query($conn, "SELECT * FROM offre WHERE annee LIKE '%$search_term%' OR nomEnt LIKE '%$search_term%' OR ville LIKE '%$search_term%' OR maitreStg LIKE '%$search_term%'
    OR mail LIKE '%$search_term%' OR codePostal LIKE '%$search_term%' OR telephone LIKE '%$search_term%'");
    
$resultat=mysqli_fetch_all($resut);
} else {
    $resut=mysqli_query($conn,"SELECT * FROM offre");
    
$resultat=mysqli_fetch_all($resut);
}
// Tri de la table en fonction de la colonne "Entreprise de stage"
if (isset($_GET['sort']) && $_GET['sort'] == 'nomEnt') {
    usort($resultat, function($a, $b) {
        return strcmp($a[0], $b[0]);
    });
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
    <form action="" method="post">
    <div class="navbar navbar-default">
		<div class="container-fluid">
            <ul class="nav navbar-nav">
    			<li><a href="listeAdmin.php">liste des Offres</a></li>
				<li><a href="ajoutOffre.php">Ajouter une offre</a></li>
				<li><a href="modifierOffre.php">Modifer une offre</a></li>
			</ul>
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Recherche" name="search_term">
                </div>
                <button type="submit" class="btn btn-default" name="search"><span class="glyphicon glyphicon-search"></span></button>
		</div>
	</div>
        <center><h2 style="color: blue;">Liste des stages</h2><br>
        <table class="table">
            <tr>
                <th><a href="?sort=nomEnt">Entreprise de stage</a></th>
                <th>Ville</th>
                <th>Code Postal</th>
                <th>Maitre de stage</th>
                <th>Adresse mail de maitre de stage</th>
                <th>Téléphone</th>
                <th>Année</th>
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
                    <td><input type='hidden' name='annee$res[6]' value='$res[7]'>$res[7]</td>
                    <td><input type='submit' class='btn btn-danger' name='supprimer$res[6]' value='Supprimer'></td>
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
        <input class="btn btn-primary" type="submit" value="Deconnexion" name="logout"></center>
    </form>
</body>
</html>