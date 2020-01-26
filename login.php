<!DOCTYPE html>
<html lang="en">
<head>  
<title>Memester Login</title>
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




  <div class="column middle" style="background-color:#0000; height:auto;">
    <div class="login">
      <div class="lgn_left">
        <h1>login</h1>
        <p>Please enter your username and password</p>
      </div>
      <div class="lgn_right">
        <form method="POST" action="login.php">
          <input class="textField" type="text" name="username" placeholder="Username" id="username">  
          <input class="textField" type="password" name="password" placeholder="Password" id="password">  
          <input class="btn" type="submit" value="LOGIN">
        <form>
      </div>
    </div>
  </div>


</div>

<div class="footer">
  <?php include 'footer.php'; ?>
</div>


</div>
</body>
</html>

<?php 

  include 'check_login.php';
  
?>