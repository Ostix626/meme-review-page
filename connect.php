<?php
$conn = new mysqli('localhost', 'root', 'memester66', 'memester');

if(!$conn){
	die("Database Connection Failed" . mysqli_error($conn));
}

?>

