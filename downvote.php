<?php

include 'connect.php';
$memesId = $_GET["memesId"];
$sql_q = "UPDATE memes SET downvotes=downvotes + 1 WHERE meme_id=$memesId";
$res_q = mysqli_query($conn, $sql_q);
$sql = "SELECT * FROM memes WHERE meme_id=$memesId";
$res = mysqli_query($conn, $sql);
while ($row = $res->fetch_assoc()) {
    echo $row['downvotes'];
}
?>