<?php

if (!isset($_SESSION['user'])) {
  echo '<div class = "navbar"> ';
  echo '<a href = "index.php">Home</a> ';

  echo '<div class="dropdown">';
    echo '<button class="dropbtn">Categories';
      echo '<i class="fa fa-caret-down"></i>';
    echo '</button>';
    echo '<div class="dropdown-content">';
      echo '<a href="http://localhost/memester/category.php?category=Star Wars">Star Wars</a>';
      echo '<a href="http://localhost/memester/category.php?category=Shrek">Shrek</a>';
      echo '<a href="http://localhost/memester/category.php?category=Domaci">Domaci</a>';
      echo '<a href="http://localhost/memester/category.php?category=Animals">Animals</a>';
      echo '<a href="http://localhost/memester/category.php?category=Elon Musk">Elon Musk</a>';
      echo '<a href="http://localhost/memester/category.php?category=Cartoon">Cartoon</a>';
      echo '<a href="http://localhost/memester/category.php?category=Deep-fried">Deep-fried</a>';
      echo '<a href="http://localhost/memester/category.php?category=Riteh">Riteh</a>';
      echo '<a href="http://localhost/memester/category.php?category=Slav">Slav</a>';
      echo '<a href="http://localhost/memester/category.php?category=Dark humor">Dark humor</a>';
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
      echo '<a href="http://localhost/memester/category.php?category=Star Wars">Star Wars</a>';
      echo '<a href="http://localhost/memester/category.php?category=Shrek">Shrek</a>';
      echo '<a href="http://localhost/memester/category.php?category=Domaci">Domaci</a>';
      echo '<a href="http://localhost/memester/category.php?category=Animals">Animals</a>';
      echo '<a href="http://localhost/memester/category.php?category=Elon Musk">Elon Musk</a>';
      echo '<a href="http://localhost/memester/category.php?category=Cartoon">Cartoon</a>';
      echo '<a href="http://localhost/memester/category.php?category=Deep-fried">Deep-fried</a>';
      echo '<a href="http://localhost/memester/category.php?category=Riteh">Riteh</a>';
      echo '<a href="http://localhost/memester/category.php?category=Slav">Slav</a>';
      echo '<a href="http://localhost/memester/category.php?category=Dark humor">Dark humor</a>';
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