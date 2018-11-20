<html>
<body>
  <h1>PHP Demo 9 - File i/o (reading)</h1>
  <h2><u>poem.txt</u></h2>
  <?php  
    $infile = fopen("poem.txt", "r") or die("Unable to open file!");
    while(!feof($infile))
    {
      echo fgets($infile)."<br>";
    }
    fclose ($infile);
  ?>  
</body>
</html>