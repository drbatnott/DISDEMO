<html>
<head>
<title>The Likes of Fairytale Characters</title>
<?php
?>
</head>

<body>
<?php

$file = fopen("lines.csv","r");
while($data = fgetcsv($file)){
echo "<p>";
echo $data[0] . " is " . $data[1] . " years old and likes " . $data[2];
echo "</p>";
}
fclose($file);


?>
</body>
</html>