<?php 

  include 'connect.php';

  /*$user = $_POST['username'];
  $pass = password_hash($_POST['password'], POASSWORD_DEFAULT);

  $sql_up = "SELECT * FROM user WHERE user_name='" . $user . "' AND user_pass='" . $pass . "'";
  $res_up = mysqli_query($conn, $sql_up);

  if (mysqli_num_rows($res_up) > 0){
    /*$time = time();
    session_start();
    $_SESSION['user'] = $user;
    $_SESSION['time'] = $time;
    header( "Location: logged_in.php" );
    echo 'Successful login';
  } else {
    echo 'Nepostojeci username i/ili password.';
  }*/

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
      header("Location: logged_in.php");
    }else {
      echo 'Invalid username/password';
    }
  }
?>