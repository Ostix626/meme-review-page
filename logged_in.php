<?php
	session_start();
	
	/*$sada = time();
	$onda = $_SESSION['time'];
	$razlika = $sada - $onda;
	if ($razlika > 10 or !isset($onda)) {          
		//session_unset();
		session_destroy();
		header ("Location: osnovna.html");
	}*/
	//if(session_is_registered('user')){
	if (isset($_SESSION['user'])) {
?>
	<!--<table width="800">
		<tr><td align="right" style="background-color:#6495ed; padding:5px">
			Prijavljeni korisnik: <b><?php echo($_SESSION["user"])?></b>
			&nbsp;&nbsp;<a href="logout.php">[logout]</a>	
		</td></tr>
		<tr><td height="600" valign="top" style="background-color:#5FE9F7; padding:10px" >
			<h1>Zasticeno podrucje...</h1><br/>
			Ovo vide samo registrirani korisnici!<br/>
			Npr. administrator uredjuje sadrzaj stranice...</br>
			<img src="locked.png">
		</td></tr>
	</table> -->
<!DOCTYPE html>
<html lang="en">
<head>  
<title>Memester</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="izgled.css" />
</head>

<body>
<div class="center">


<div class="header">
  <img src="slike/memester_logo_rwa.jpg" width="1200px">
</div>

<?php include 'navbar.php'; ?>

<div class="row">
  <div class="column side" style="background-color:rgba(221,221,221,0.98);">
    <ul class="sideMenu">
      <?php include 'sideMenu.php'; ?>
    </ul>
  </div>


  <div class="column middle" style="background-color:#0000;">
    Column
  </div>


</div>

<div class="footer">
  <?php include 'footer.php'; ?>
</div>


</div>
</body>
</html>

<?php
	}
	else{
		header( "Location: index.php" );
	}
?>