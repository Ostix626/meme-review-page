<?php

  include 'connect.php';
/*$conn = new mysqli('localhost', 'root', 'memester66', 'memester');

if(!$conn){
  die("Database Connection Failed" . mysqli_error($conn));
}*/
  $ispis = null;
  if(isset($_POST['usern']) && isset($_POST['pass']) && isset($_POST['email'])) {
    $psw = md5($_POST['pass']);
    $un = $_POST['usern'];
    $em = $_POST['email'];
    $sql_u = "SELECT * FROM user WHERE user_name='$un'";
    $sql_e = "SELECT * FROM user WHERE user_mail='$em'";
    $res_u = mysqli_query($conn, $sql_u);
    $res_e = mysqli_query($conn, $sql_e);

    if (mysqli_num_rows($res_u) > 0) {
      $ispis .= 'Username already taken';  
    }else if(mysqli_num_rows($res_e) > 0){
      $ispis .= 'Email already taken';
    }else {
      $sql_query = $conn->prepare("INSERT INTO user (user_mail, user_name, user_pass) VALUES (?, ?, ?)");
      $sql_query->bind_param('sss', $_POST['email'], $_POST['usern'], $psw);
      $sql_query->execute();
      $result = $sql_query->get_result();
      $sql_query->close();
      header("Location: index.php");
    }
  }
?>