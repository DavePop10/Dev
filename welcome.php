<?php 
session_start();
	require_once('user.php');
	session_destroy();

?>
<!DOCTYPE html>
<html>
	<head>
		<title>Squadfree Welcome page</title>
	</head>
	<body>
		<h2>Welcome To Squadfree</h2>
			<p>This gives you the latest videos, song and so more.</p>
		<div>
			<p>Sorry, The page is not upgraded. It will be upgraded shortly.click the link to get what you want... </p>
		</div>
		<a href="google.com">The link</a><br>
		<button><a href="index.php" style="text-decoration: none;">Logout</a></button>
		

	</body>
</html>
