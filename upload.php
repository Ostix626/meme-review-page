<?php
session_start();
$user = 'anonymus';
if (!empty($_SESSION['username'])) $user = $_SESSION['username'];


error_reporting(E_ALL ^ E_NOTICE);
error_reporting(0);
$target_dir = "uploads/";
$target_file = $target_dir . sha1(date("h:i:sa Y-m-d")) . "." .basename($_FILES['fileToUpload']['type']);
$uploadOk = 1;
$ispis = null;
$imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
// Check if image file is a actual image or fake image
if(isset($_POST["submit"])) {
    $check = getimagesize($_FILES["fileToUpload"]["tmp_name"]);
    if($check !== false) {
        $ispis .= "<br> File is an " . $check["mime"] . ".";
        $uploadOk = 1;
    } else {
        $ispis .= "<br> File is not an image.";
        $uploadOk = 0;
    }
  // Check if file already exists
  if (file_exists($target_file)) {
      $ispis .= "<br> NO REPOSTS.";
      $uploadOk = 0;
  }
  // Check file size
  if ($_FILES["fileToUpload"]["size"] > 2000000) {
      $ispis .= "<br> Your meme is too large.";
      $uploadOk = 0;
  }
  // Allow certain file formats
  if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
  && $imageFileType != "gif" ) {
      $ispis .= "<br> Only JPG, JPEG, PNG & GIF memes are allowed.";
      $uploadOk = 0;
  }
  // Check if $uploadOk is set to 0 by an error
  if ($uploadOk == 0) {
      $ispis .= "<br> Sorry, your meme was not uploaded.";
  // if everything is ok, try to upload file
  } else {
      if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) {
          $ispis .= "<br> The meme ". basename( $_FILES["fileToUpload"]["name"]). " has been uploaded.";
      } else {
          $ispis .= "<br> Sorry, there was an error uploading your meme.";
      }
  } 
} 
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
    <form action="upload.php" method="post" enctype="multipart/form-data">
    Select meme to upload:
    <input type="file" name="fileToUpload" id="fileToUpload"> 
    <input type="submit" value="Upload Image" name="submit">
    </form>
    <?php echo "$ispis" ?>
  </div>


</div>

<div class="footer">
  <?php include 'footer.php'; ?>
</div>


</div>
</body>
</html>