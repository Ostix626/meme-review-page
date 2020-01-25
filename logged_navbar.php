<?php

echo '<div class = "navbar"> ';
  echo '<a href = "logged_in.php">Home</a> ';

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
  echo '<span class="plavo"><a href = "login.php" >Logout</a></span>';
  echo '<span class="plavo">' . $_SESSION["user"] . '</span>';
  
echo '</div> ';

?>