<?php

$player=0;

if(isset($_POST['take1'])){
	$player = $player + 1;
}

if(isset($_POST['take2'])){
	$player = $player + 2;
}

if(isset($_POST['take3'])){
	$player = $player + 3;
}

?>
<!DOCTYPE HTML>
<html>
<head lang=fr>
	<meta charset= 'UTF-8'>
	<link href='ex01/styles.css' rel='stylesheet' type='text/css'>
	<title>Exo1</title>
</head>
<body>
	<form name='playerForm' method='POST'>
		<input type='submit' name='solo' value='Solo'>
		<input type='submit' name='2player' value='2 Joueurs'>
	</form>
	<br>
	Combien voulez-vous tirer d'allumettes ?:<br>
	<form name='TakeMatch' method='POST'>
		<input type='submit' name='take1' value='1'>
		<input type='submit' name='take2' value='2'>
		<input type='submit' name='take3' value='3'>
	</form>
	
	<?php
		$i = $player;
		for($i;$i<=13;$i++){
			echo '<img src="exo1/match.png" width="50px" height="auto">';
		}
	?>
</body>
</html>