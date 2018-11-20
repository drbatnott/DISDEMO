<!DOCTYPE html>
<html>
<head>
<title>Data Entry Form Part 2</title>
<?php
include "DBFunctions.php";
$sql = "select * from schools";
$result= $conn->query($sql); 
?>

</head>
<body>
<h1>Data Entry On New Course Codes</h1>
<form action="LoadData.php" method="post">
<p>School</p>
	<SELECT name='type'>
	<?php
		while($row = $result->fetch_assoc())
		{
			echo "<OPTION Value = '" . $row['schoolname']. "'>" .$row['schoolname']."</OPTION>"; 						}
		//} 
	?>
	</SELECT> 
	<input type="submit" value="Search" class="button" />
</form>
</body>

</html>

