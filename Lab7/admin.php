<?php

session_start();

//Grabs from the database to display all products
function displayAllProducts(){
     global $conn;
     
     $sql = "SELECT productName, productDescription, price FROM 'om_product' ORDER BY productName";
     
     $stmt = $conn ->prepare($sql);
     $stmt->execute();
     $record = $stmt->fetch(PDO::FETCH_ASSOC);
    
}



?>

<!DOCTYPE html>
<html>
    <head>
        <title> Admin Main Page </title>
    </head>
    <body>


        
        <h1> Admin Main Page </h1>
        
        <h3> Welcome <?=$_SESSION['adminName']?>! </h3>
        
        <br />
        
        <strong> Products: </strong> <br />
        
        <?=displayAllProducts()?>
        
        

    </body>
</html>