<html>

<body>

  <h1>PHP Demo 10 - File i/o (writing)</h1>

  <h2><u>Creating output.txt</u></h2>
  
  <?php  
    $outfile = fopen("output.txt", "w") or die("Unable to open file!");
    
    fwrite($outfile, "A message from PHP\n");
    fwrite($outfile, "Another line of text\n");
    fclose ($outfile);
    echo "output.txt created...";

    $infile = fopen("output.txt", "r") or die("Unable to open file!");
    
    echo "<pre>";
    while(!feof($infile))
    {
      echo fgets($infile)."<br>";
    }
    fclose ($infile);
    
    echo "</pre>";
  ?>  

</body>
</html>