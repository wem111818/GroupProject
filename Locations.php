<?php 

require_once('config.php'); 

/*
 Displays the list of Location links on the left-side of page
*/
function outputLocations() {
   try {
         $pdo = new PDO(DBCONNSTRING,DBUSER,DBPASS);
         $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
         $sql = "select * from Locations order by LocationCity limit 0,30";
         $result = $pdo->query($sql);
         while ($row = $result->fetch()) {
            echo '<a href="' . $_SERVER["SCRIPT_NAME"] . '?id=' . $row['LocationID'] . '" class="';
            if (isset($_GET['id']) && $_GET['id'] == $row['LocationID']) echo 'active ';
            echo 'item">';
            echo $row['LocationCity'] . '</a>';
         }
         $pdo = null;
   }
   catch (PDOException $e) {
      die( $e->getMessage() );
   }
}

/*
 Displays the list of Location images for the Location id specified in the id query string
*/
function outputLocationInfo() {
   try {
      if (isset($_GET['id']) && $_GET['id'] > 0) {   
         $pdo = new PDO(DBCONNSTRING,DBUSER,DBPASS);
         $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
         
         $sql = 'select * from LocationImages LEFT JOIN Locations ON Locations.LocationID = LocationImages.LocationID where LocationImages.LocationID=:id';
         $id =  $_GET['id'];
         $statement = $pdo->prepare($sql);
         $statement->bindValue(':id', $id);
         $statement->execute();
         while ($row = $statement->fetch()) {
            outputSingleImage($row);         
         }
         $pdo = null;
      }
   }
   catch (PDOException $e) {
      die( $e->getMessage() );
   }
}

/*
 Displays a single location id
*/
function outputSingleImage($row) {
   echo '<div class="item">';
   echo '<div class="image">';
   echo '<img  src="/GroupProject/Images/LocationImages/' . $row['ImageName'] .'.jpg">';
   echo '<p class="description">';
   echo $row['ImageCaption'];
   echo '</p>';
   echo '</div>';
   echo '<div class="content">';
   echo '<h4 class="header">';
   echo $row['LocationCity']; 
   echo '</h4>';
   echo '<p class="description">';
   echo $row['LocationDescription'];
   echo '</p>';
   echo '<h6 class="header">';
   echo 'Things to do'; 
   echo '</h6>';
   
   $pdo = new PDO(DBCONNSTRING,DBUSER,DBPASS);
   $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
   
   $sql = 'select * from Activities where LocationID=:id';
   $id =  $_GET['id'];
   $statement = $pdo->prepare($sql);
   $statement->bindValue(':id', $id);
   $statement->execute();
   while ($row = $statement->fetch()) {
      outputActivities($row);         
   }
   echo '</div>';  // end class=content
   echo '</div>';  // end class=item
}

function outputActivities($row) {
   echo '<p class="description">';
   echo $row['ActivityName'];
   echo '</p>';
   echo '<p class="subdescription">';
   echo $row['ActivityDescription'];
   echo '</p>';
}

?>
<!DOCTYPE html>
<html>
<head>
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Group Project Locations</title>
   <link href="semantic/semantic.css" rel="stylesheet"> 
</head>
<body>
   <main class="ui container">
      <div class="ui secondary segment">
         <h1>Locations</h1>
         <p><a href="/GroupProject/HomePage.html">Home</a>  |  <a href="/GroupProject/Travel.php">Directory</a></p>
      </div>
      <div class="ui segment">
         <div class="ui grid">
           <div class="four wide column">
              <div class="ui link list">
                 <?php outputLocations(); ?>
              </div>
           </div>
           <div class="twelve wide column">
              <div class="ui items">
                 <?php outputLocationInfo(); ?> 
              </div>
           </div>
         </div>
      </div>
   </main>

</body>
</html>
