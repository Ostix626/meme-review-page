<?php
$conn = new mysqli('localhost', 'root', '', 'memester');

if(!$conn){
	die("Database Connection Failed" . mysqli_error($conn));
}

?>

