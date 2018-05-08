<?php

include 'config/dbConn.php';
$conn = getDatabaseConnection("teamproject");

function countAllProducts() {
    global $conn;
    $sql = "SELECT COUNT(productId) as count FROM product";
    $stmt = $conn->prepare($sql);
    $stmt->execute();
    $records = $stmt->fetch(PDO::FETCH_ASSOC);
    return $records;
}

function getTotalPrice() {
    global $conn;
    $sql = "SELECT ROUND(SUM(price)) as totalPrice FROM product";
    $stmt = $conn->prepare($sql);
    $stmt->execute();
    $records = $stmt->fetch(PDO::FETCH_ASSOC);
    return $records;
}

function getAvgPrice() {
    global $conn;
    $sql = "SELECT ROUND(AVG(price)) as avgPrice FROM product";
    $stmt = $conn->prepare($sql);
    $stmt->execute();
    $records = $stmt->fetch(PDO::FETCH_ASSOC);
    return $records;
}



?>




<!DOCTYPE html>
<html>
    <head>
        <title>Aggregate Page</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    </head>
    <style>
        h1, h3 {
            text-align:center;
        }
        #data {
            text-align:center;
        }
    </style>
    <div class='container'>
        <div class='text-center'>
            
            <!-- Bootstrap Navagation Bar -->
            <nav class='navbar navbar-inverse - navbar-fixed-top'>
                <div class='container-fluid'>
                    <div class='navbar-header'>
                        <a class='navbar-brand' href='#'>Lo's Game Center</a>
                    </div>
                    <ul class='nav navbar-nav'>
                        <li><a href='home.php'>Home</a></li>
                        <li><a href = 'admin.php'>Admin Home</a></li>
                        <li><a href = 'agregate.php'>Agregate (Admin Only)</a></li>
                        <li><a href = 'home.php'>Logout</a></li>
                    </ul>
                </div>
            </nav>
            <br /> 
        </div>
    </div>
    <br />
    <body>
        <h1><strong>Aggregate Page: Admin Only</strong></h1>
        <h3><strong>Aggregate Data Report:</strong></h3>
         <br /> <br /> <br />
        <div id="data">
            <h4><strong>Total Amount of Products:</strong></h4>
            <?php 
                $records = countAllProducts();
                echo $records['count'];
            ?>
            <br /> <br /> <br />
            
             <h4><strong>Average Price of All Products:</strong></h4>
            <?php 
                $records = getAvgPrice();
                echo  "$". $records['avgPrice'];
            ?>
            <br /> <br /> <br />
            
            <h4><strong>Total Price of All Products:</strong></h4>
            <?php 
                $records = getTotalPrice();
                echo "$". $records['totalPrice'];
            ?>
            <br /> <br /> <br />
        </div>

    </body>
</html>