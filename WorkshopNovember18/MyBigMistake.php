<!DOCTYPE html>
<html>
<head>
<title>Data Entry Form</title>
<?php
$servername = "mysql.cs.nott.ac.uk";
$username = "pszpxb";
$password = "Fl0psyD0g";
$dbasename = "pszpxb";
$conn = new mysqli($servername, $username, $password, $dbasename);
if ($conn->connect_error) {
	die("Connection failed: " . $conn->connect_error);
}

?>
</head>
<body>
<h1>Data Entry On New Course Codes</h1>
<form action="LoadData.php" method="post">
<p>School</p>
						<SELECT name='type'>
							<OPTION Value="Computer Science">Computer Science</OPTION>
							<OPTION Value="EEE">EEE</OPTION>					
							<OPTION Value="History">History</OPTION> 
							<OPTION Value="English">English</OPTION>
							<OPTION Value="Physics">Physics</OPTION> 
							<OPTION Value="Food Science">Food Science</OPTION> 
							</SELECT> 
						<input type="submit" value="Search" class="button" />
					</form>
</body>

</html>

