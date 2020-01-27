<?php
  session_start();
  include 'check_reg.php';
?>

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
    <div class="login">
      <div class="lgn_left">
        <h1>Register</h1>
        <p>Please enter your E-mail, username and password</p><br>
      </div>
      <div class="lgn_right">
        <form method="post" action="register.php">
            <label style="margin-left:25px;" for="usern">Username:</label>
            <input class="textField" type="text" name="usern" id="user" required><br>
            <label style="margin-left:25px;" for="pass">Password:&nbsp</label>
            <input class="textField" type="password" name="pass" id="pass" required><br>
            <label style="margin-left:25px;" for="email">E-Mail:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</label>
            <input class="textField" type="text" name="email" id="email" required><br><br>
            <input style="margin-left:25px;" class="btn" type="submit" name="submit" value="Sign Up"> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
            <?php echo "$ispis"; ?> <br><br>
        </form>
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

