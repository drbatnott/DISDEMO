<?php
$servername = "mysql.cs.nott.ac.uk";
$username = "pszpxb";
$password = "Fl0psyD0g";
$dbasename = "pszpxb";
//function DBSetUP(){ 
	$conn = new mysqli($servername, $username, $password, $dbasename);
	if ($conn->connect_error) {
		die("Connection failed: " . $conn->connect_error);
	}
//}
//DBSetUP();
//echo "Done";
?>
