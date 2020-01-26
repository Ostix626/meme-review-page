<?php

if (!isset($_SESSION['user'])) {
  echo '<div class = "navbar"> ';
  echo '<a href = "index.php">Home</a> ';

  echo '<div class="dropdown">';
    echo '<button class="dropbtn">Categories';
      echo '<i class="fa fa-caret-down"></i>';
    echo '</button>';
    echo '<div class="dropdown-content">';
      echo '<a href="#">Star Wars</a>';
      echo '<a href="#">Shrek</a>';
      echo '<a href="#">Domaci</a>';
      echo '<a href="#">Animals</a>';
      echo '<a href="#">Elon Musk</a>';
      echo '<a href="#">Cartoon</a>';
      echo '<a href="#">Deep-fried</a>';
      echo '<a href="#">Riteh</a>';
      echo '<a href="#">Slav</a>';
      echo '<a href="#">Dark humor</a>';
    echo '</div>';
  echo '</div> ';

  echo '<span class="plavo"><a href = "upload.php" >Upload</a></span>';
  echo '<span class="plavo"><a href = "login.php" >Login</a></span>';
  echo '<span class="plavo"><a href = "register.php" >Registration</a></span>';
  
  echo '</div> ';
}else {
  echo '<div class = "navbar"> ';
  echo '<a href = "index.php">Home</a> ';

  echo '<div class="dropdown">';
    echo '<button class="dropbtn">Categories';
      echo '<i class="fa fa-caret-down"></i>';
    echo '</button>';
    echo '<div class="dropdown-content">';
      echo '<a href="#">Star Wars</a>';
      echo '<a href="#">Shrek</a>';
      echo '<a href="#">Domaci</a>';
      echo '<a href="#">Animals</a>';
      echo '<a href="#">Elon Musk</a>';
      echo '<a href="#">Cartoon</a>';
      echo '<a href="#">Deep-fried</a>';
      echo '<a href="#">Riteh</a>';
      echo '<a href="#">Slav</a>';
      echo '<a href="#">Dark humor</a>';
    echo '</div>';
  echo '</div> ';

  echo '<span class="plavo"><a href = "upload.php" >Upload</a></span>';
  echo '<span class="plavo">';
    echo ' <div class="dropdown">';
      echo ' <button class="dropbtn">Hello there  ' . $_SESSION["user"] . '';
        echo ' <i class="fa fa-caret-down"></i>';
     echo ' </button>';
     echo ' <div class="dropdown-content">';
       echo ' <a href="logout.php">Logout</a>';
     echo ' </div>';
   echo ' </div> ';
   echo ' </div> ';
   echo ' </span>';
}

?>