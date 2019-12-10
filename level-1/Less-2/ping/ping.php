<html>
<head>
<title>Lesson 2 RCE</title>
</head>

<body>
<form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post">
ip:<input type="text" name="ip" />
<input type="submit" name="ping" value="ping" />
</form>

<?php
if (isset($_POST["ping"]))
{
	if (isset($_POST["ip"]))
	{
		echo system("ping " . $_POST['ip']);
	}
}

?>
</body>

</html>