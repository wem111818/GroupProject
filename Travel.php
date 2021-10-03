<?php
    
    require_once('config.php'); 
    /*
    Displays the list of Countries and Location links on the left-side of page
    */

   function outputLocations() {
      try {
         $pdo = new PDO(DBCONNSTRING,DBUSER,DBPASS);
         $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
         $sql = "select * from Locations order by LocationCity limit 0,30";
         $result = $pdo->query($sql);
         while ($row = $result->fetch()) {
            echo '<a href="Locations.php?id=' . $row['LocationID'] . '" class="';
            if (isset($_GET['id']) && $_GET['id'] == $row['LocationID']) echo 'active ';
            echo 'item">';
            echo $row['LocationCity'] . ',' . $row['LocationCountry'] . '</a><br/>';
         }
         $pdo = null;
      }
      catch (PDOException $e) {
         die( $e->getMessage() );
      }
   }
?>
<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <link rel="stylesheet" href="semantic/semantic.css"/>
   <title>Directory</title>
</head>
<body>
   <main class="ui container">
      <div class="ui secondary segment">
         <h1>Directory</h1>
         <p>Let us be your travel guide.</p>
         <p><a href="/GroupProject/HomePage.html">Home</a>  |  <a href="/GroupProject/Locations.php">All Locations</a></p>
         <h2>Explore</h2>
         <p>Visit some of these amazing locations.</p>
         <?php outputLocations(); ?>
         
   </main>
</body>
</html>

