<?php

require_once("exo3/connect.php");
global $pdo;

$sqlMag = "SELECT * FROM magazine";
$magazine =  $pdo->query($sqlMag);

?>
<!DOCTYPE HTML>
<html>
<head lang=fr>
	<meta charset= 'UTF-8'>
	<title>Exo3</title>
</head>
<body>
	<?php foreach($magazine as $magazines):?>
		<?php 	
			$sqlCountAbo = "SELECT count(*) as NbAbonne FROM abonnement WHERE magazineId =".$magazines['id'];
			$nbAbonne =  $pdo->query($sqlCountAbo);
		?>
		<?php 	
			$sqlAvgAge = "SELECT ROUND(AVG(YEAR(CURRENT_TIMESTAMP) - YEAR(dateNaissance))) as AvgAge FROM abonne 
							JOIN abonnement on abonne.id = abonNeId
							WHERE magazineId = ".$magazines['id'];
			$AvgAge =  $pdo->query($sqlAvgAge);
		?>
		Nom: <?php echo $magazines['nom']; ?><br>
		Genre: <?php echo $magazines['genre']; ?><br>
		Année de création: <?php echo $magazines['anneeCreation']; ?><br>
		Publication: <?php echo $magazines['publication']; ?><br>
		<?php foreach($nbAbonne as $nbAbonnes):?>
			Nombres d'abonnés: <?php echo $nbAbonnes['NbAbonne']; ?><br>
		<?php endforeach;?>
		<?php foreach($AvgAge as $AvgAges):?>
			Moyenne d'ages: <?php echo $AvgAges['AvgAge']; ?><br><br>
		<?php endforeach;?>
	<?php endforeach;?>
</body>
</html>