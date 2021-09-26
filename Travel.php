<?php
    
    require_once('config.php'); 
 
    /*
    Displays the list of Location links on the left-side of page
    */
    function outputLocations() {
   try {
         $pdo = new PDO(DBCONNSTRING,DBUSER,DBPASS);
         $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
         $sql = "select * from Locations order by LocationCountry, LocationCity limit 0,30";
         $result = $pdo->query($sql);
         while ($row = $result->fetch()) {
            echo '<a href="' . $_SERVER["SCRIPT_NAME"] . '?id=' . $row['LocationID'] . '" class="';
            if (isset($_GET['id']) && $_GET['id'] == $row['LocationID']) echo 'active ';
            echo 'item">';
            echo $row['LocationCity'] . '</a><br/>';
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
   <link rel="stylesheet" href="Travel.css"/>
   <title>Directory</title>
</head>
<body>
   <h1>Directory</h1>
   <p>Let us be your travel guide.</p>
   <h2>Travel</h2>
   <p>Visit some of these amazing locations.</p>
   <div class="list">
     <?php outputLocations(); ?>
   </div>
</body>
</html>