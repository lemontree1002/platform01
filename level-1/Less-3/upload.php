<html>
<head>
<title>Lesson 3 upload</title>
</head>

<body>

<form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post" enctype="multipart/form-data">
<label for="file">file:</label>
<input type="file" name="file" id="file" />
<input type="submit" name="submit" value="upload"/>
</form>

<?php
if (isset($_FILES["file"]))
{
	if ($_FILES["file"]["error"] > 0)
	{
		echo "error: " . $_FILES["file"]["error"] . "<br>";
	}
	else
	{
		echo $_FILES["file"]["name"] . "<br>";
		echo $_FILES["file"]["type"] . "<br>";
		echo $_FILES["file"]["size"] . "<br>";
		echo $_FILES["file"]["tmp_name"] . "<br>";
		echo $_FILES["file"]["error"] . "<br>";
		
		if (file_exists("upload/" . $_FILES["file"]["name"]))
		{
			echo $_FILES["file"]["name"] . " is exists.";
		}
		else
		{
			move_uploaded_file($_FILES["file"]["tmp_name"], "upload/" .  $_FILES["file"]["name"]);
			echo "file's directory is: " . "upload/" . $_FILES["file"]["name"];
		}
	}
}
?>

</body>
</html>