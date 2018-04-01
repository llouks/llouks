<?php
    include 'dbConnection.php';
    $conn = getDatabaseConnection('midterm');
  
  function getInfoA(){
      global $conn;
      
      $sql= "   SELECT firstName, lastName, country_of_birth FROM 'celebrity' WHERE gender = 'F' AND country_of_birth != 'USA' ORDER BY lastName";
                
    //Example: $sql = "SELECT productName, productDescription, price FROM 'om_product' ORDER BY productName";
                
        $stmt = $conn->prepare($sql);
        $stmt->execute();
        $records = $stmt->fetchAll(PDO::FETCH_ASSOC);
    
    foreach ($records as $record) {
        echo $record['firstName'] . "" . $record['lastName'] ."--". $record['country_of_birth'];
        echo "</br>";
    }
    
  }
    
?>

<!DOCTYPE html>
<html>
    <head>
        <title>Midterm: Program #2 </title>
    </head>
    <body>
        <h2>Name / Country of Birth of Female Actresses Who are not Native to USA, Ordered by Last Name:</h2>
        <?=getInfoA()?>

    </body>
    
      
  <table border="1" width="600">
    <tbody><tr><th>#</th><th>Task Description</th><th>Points</th></tr>
    <tr style="background-color:#FFC0C0">
      <td>1</td>
      <td>Name and country of birth of female actresses who were NOT born in the USA, ordered by last name</td>
      <td width="20" align="center">15</td>
    </tr>  
    <tr style="background-color:green">
      <td>2</td>
      <td>Number of movies per category and their average duration</td>
      <td width="20" align="center">15</td>
    </tr>  
    <tr style="background-color:#FFC0C0">
      <td>3</td>
      <td>All info about the top three longest movies released after 2000</td>
      <td width="20" align="center">15</td>
    </tr>     
     <tr style="background-color:#FFC0C0">
       <td>4</td>
       <td>List of  actors and actresses who have not won an academy award, ordered by last name </td>
       <td align="center">15</td>
     </tr>
     <tr style="background-color:#FFC0C0">
      <td>5</td>
      <td>List of celebrities who have won an oscar, ordered by "award_year". Include full name, movie title, oscar year, and award category.</td>
      <td width="20" align="center">15</td>
    </tr>     
     <tr style="background-color:#99E999">
      <td>6</td>
      <td>This rubric is properly included AND UPDATED (BONUS)</td>
      <td width="20" align="center">2</td>
    </tr>     
     <tr>
      <td></td>
      <td>T O T A L </td>
      <td width="20" align="center"><b></b></td>
    </tr> 
  </tbody></table>    

    
    
</html>