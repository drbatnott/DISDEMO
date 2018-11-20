<html>

<body>

  <h1>PHP Demo 11 - Exceptions</h1>

  <?php  

  function checkDiv($a)
  {
    if ($a==0.0) throw new Exception ("divide by zero");
  }

  try {
    for($n=5;$n>=0;$n--)
    {
      echo "5/".$n." = ";
      checkDiv($n);
      $answer=5/$n;
      echo $answer."<br>";
    }
  }
  
  catch (Exception $e)
  {
    echo "Error: ".$e->getMessage();
  } 

  ?>  

</body>
</html>