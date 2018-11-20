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
function DisplayContents($n,$c,$fields){
	
	$sql1 = "select * from " .$n; 
	echo $sql1. "<br>";
	$result1 = $c->query($sql1);

	while($row1=$result1->fetch_assoc()){
		for($i = 0; $i < sizeof($row1); $i++){
			$string = $fields[$i];
			echo $row1[$string] . " ";
		}
		echo "<br>";
	}
}

$file = $_POST['file'];
$end = strpos($file,'.');
$name = substr($file,0,$end);
$infile = fopen($file,"r");
$data = fgetcsv($infile);
$fields = $data;

$ncols = sizeof($data);
	while($data = fgetcsv($infile)){
		$sql = "insert into " . $name . " (";
		for($i = 0; $i < $ncols; $i++){
			$sql .= $fields[$i];
			if($i < $ncols-1 ){
				$sql .= ",";
			}
			else{
				$sql .= ") values ('";
			}
		}
		 for($i = 0; $i < $ncols; $i++){
			$sql .= $data[$i];
			if($i < $ncols-1 ){
				$sql .= "','";
			}
			else{
				$sql .= "')";
			}
		}
		echo $sql . "<br>";
		//$result = $conn->query($sql);
	}
	fclose($infile);

?>
</head>
<body>
<h1>Saving the file</h1>
The file is <?php echo $file . "<br>"; ?>
The name ends at <?php echo $end . "<br>"; ?>
The name is <?php echo $name . "<br>"; ?>
The rows have <?php echo $nrows . " columns (fields)<br>"; ?>
<?php
for($i = 0; $i < $ncols; $i++){
	echo "Field ". $i . " is " .$fields[$i]. "<br>";
}
DisplayContents($name,$conn,$fields);
?>
</body>

</html>

