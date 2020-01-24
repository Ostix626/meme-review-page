<html>
    <head>
		<meta charset="utf-8">
        <title>
            Registration
        </title>
    </head>
    <body>
        <form method="post" action="register.php">
            <label for="usern">Username</label>
            <input type="text" name="usern" id="user">
            <label for="pass">Password</label>
            <input type="password" name="pass" id="pass">
            <label for="email">E-Mail</label>
            <input type="text" name="email" id="email">
            <input type="submit" name="submit" value="Sign Up">
        </form>
    </body>
</html>

<?php
    $servername = "localhost";
    $username = "root";
    $password = "memester66";
    $dbname = "memester";
    
    // Stvaranje konekcije na bazu
    $conn = new mysqli($servername, $username, $password, $dbname);

    // Provjera uspjesnosti spajanja na bazu
    if ($conn->connect_error) {
        die("Uspostavljanje konekcije na bazu nije uspjelo: ". $conn->connect_error);
    }  
    
    if(isset($_POST['usern']) && isset($_POST['pass']) && isset($_POST['email'])) {
    	$psw = password_hash($_POST['pass'], PASSWORD_DEFAULT);
        $sql_query = $conn->prepare("INSERT INTO user (user_mail, user_name, user_pass) VALUES (?, ?, ?)");
        $sql_query->bind_param('sss', $_POST['email'], $_POST['usern'], $psw);
        $sql_query->execute();
        $result = $sql_query->get_result();
        $sql_query->close();
    }
?>