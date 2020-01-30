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
        $query = "SELECT * FROM memes ORDER BY `upload_date` DESC LIMIT 50";
        $stmt = $conn->prepare($query);
        $stmt->execute();
        $result = $stmt->get_result();

        if ($result->num_rows > 0) {
          while($row = $result->fetch_array(MYSQLI_BOTH)) {

            echo "<div>";
              echo "<img src='" . $row['filepath'] . "' >";
              echo "<table class='tablica'>";
                echo "<tr>";
                  echo "<td>
                  
                   </td>";
                  echo "<td></td>";
                  echo "<td> <button type='submit' name='modVote' onclick='changeId(" . $row['meme_id'] . ")'>
                    <img src='slike/10-Number-PNG.png'>
                    </button> </td>";
                  echo "<td id='mod" . $row['meme_id'] . "'>" . $row['meme_of_the_decade'] . "</td>";
                  echo "<td>
                    </td>";
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
<?php
  if(isset($_SESSION['user'])) {
?>
  <script>
function changeId(memesId) {
  var xmlhttp = new XMLHttpRequest();
  xmlhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      document.getElementById("mod" + memesId).innerHTML = this.responseText;
    }
  };
  xmlhttp.open("GET", "modVote.php?memesId=" + memesId, true);
  xmlhttp.send();
}
</script>
<?php
  }
?>
</body>
</html>