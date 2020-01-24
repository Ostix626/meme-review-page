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
            <input type="text" name="usern" id="user" required>
            <label for="pass">Password</label>
            <input type="password" name="pass" id="pass" required>
            <label for="email">E-Mail</label>
            <input type="text" name="email" id="email" required>
            <input type="submit" name="submit" value="Sign Up">
        </form>
    </body>
</html>

<?php

	include 'check_reg.php'

	/*include 'connect.php';
    
    if(isset($_POST['usern']) && isset($_POST['pass']) && isset($_POST['email'])) {
    	$psw = password_hash($_POST['pass'], PASSWORD_DEFAULT);
        $sql_query = $conn->prepare("INSERT INTO user (user_mail, user_name, user_pass) VALUES (?, ?, ?)");
        $sql_query->bind_param('sss', $_POST['email'], $_POST['usern'], $psw);
        $sql_query->execute();
        $result = $sql_query->get_result();
        $sql_query->close();
    }*/
?>