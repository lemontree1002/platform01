<html>
<head>
<title>key</title>
</head>

<body>
<?php
$servername = "localhost";
$username = "root";
$password = "root";
$dbname = "test";

$conn = mysqli_connect($servername, $username, $password, $dbname);
if (!$conn){
	die("connect fail: " . mysqli_connect_error());
}

if (isset($_POST["login"]))
{
	$sql = "select * from user where name = '{$_POST["name"]}' and password = '{$_POST["password"]}'";
	$result = mysqli_query($conn, $sql);
	if (mysqli_num_rows($result) > 0)
	{
		echo "a1b2c3d4";
	}
	else
	{
		echo "username or password is wrong. Try again!";
	}
}

?>
</body>
</html>