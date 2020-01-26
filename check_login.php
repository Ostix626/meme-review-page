<?php 

  include 'connect.php';
  $ispis = null;
  if(isset($_POST['username']) && isset($_POST['password'])) {
    $user = $_POST['username'];
    $pass = md5($_POST['password']);

    $sql_up = "SELECT * FROM user WHERE user_name='$user' AND user_pass='$pass'";
    $res_up = mysqli_query($conn, $sql_up);

    if (mysqli_num_rows($res_up) > 0) {
      $time = time();
      session_start();
      $_SESSION['user'] = $user;
      $_SESSION['pass'] = $pass;
      header("Location: index.php");
    }else {
      $ispis .= 'Invalid username/password';
    }
  }
?>