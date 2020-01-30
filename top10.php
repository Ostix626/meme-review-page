<?php
  session_start();
  include("connect.php");
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

    <div class="flex-container">

      <?php
        $query = "SELECT * FROM memes ORDER BY `upvotes` DESC LIMIT 10";
        $stmt = $conn->prepare($query);
        $stmt->execute();
        $result = $stmt->get_result();
        $top = 0;

        if ($result->num_rows > 0) {
          while($row = $result->fetch_array(MYSQLI_BOTH)) {
            $top += 1;
            echo "<div>";
              echo "<img src='" . $row['filepath'] . "' >";
              echo "<table class='tablica'>";
                echo "<tr>";
                  echo '<td>
                    <a href="upvote.php">
                    <img src="slike/upvote.PNG"
                    width="30px">
                   </td>';
                  echo "<td>" . $row['upvotes'] . "</td>";
                  echo "<td><img id='top10' src='slike/" . $top . "-Number-PNG.png'></td>";
                  echo "<td>" . $row['downvotes'] . "</td>";
                  echo '<td>
                    <a href="downvote.php">
                    <img src="slike/downvote.PNG"
                    width="30px">
                    </td>';
                echo "</tr>";
              echo "</table>";
            echo "</div>";
          }
        }
      ?>
    </div>

    <br>
  </div>


</div>

<div class="footer">
  <?php include 'footer.php'; ?>
</div>


</div>
</body>
</html>