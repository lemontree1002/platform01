<html>
<head>
<title>Lesson 4 fopen</title>
</head>

<body>
<form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post">
log path:<input type="text" name="file" value="log/log.txt" readonly="readonly" />
<input type="submit" name="submit" value="read" />
</form>

<?php
$file = fopen($_POST["file"], "r");
echo $file;
?>

</body>
</html>