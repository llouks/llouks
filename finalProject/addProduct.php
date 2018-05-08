<?php
session_start();
if(!isset( $_SESSION['adminName']))
{
  header("Location:index.php");
}
include "dbConnection.php";
$conn = getDatabaseConnection("teamproject");

function getCategories() {
    global $conn;
    
    $sql = "SELECT catId, catName from category ORDER BY catName";
    
    $statement = $conn->prepare($sql);
    $statement->execute();
    $records = $statement->fetchAll(PDO::FETCH_ASSOC);
    foreach ($records as $record) {
        echo "<option value='".$record["catId"] ."'>". $record['catName'] ." </option>";
    }
}

if (isset($_GET['submitProduct'])) {
    $productName = $_GET['productName'];
    $productDescription = $_GET['description'];
    $productImage = $_GET['productImage'];
    $productPrice = $_GET['price'];
    $catId = $_GET['catId'];
    
    $sql = "INSERT INTO product
            ( `productName`, `productDescription`, `productImage`, `price`) 
             VALUES ( :productName, :productDescription, :productImage, :price)";
    
    $namedParameters = array();
    $namedParameters[':productName'] = $productName;
    $namedParameters[':productDescription'] = $productDescription;
    $namedParameters[':productImage'] = $productImage;
    $namedParameters[':price'] = $productPrice;
    $statement = $conn->prepare($sql);
    $statement->execute($namedParameters);
}
?>
<!DOCTYPE html>
<html>
    <head>
        <title> Add a product </title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    </head>
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
        <h1> Add a product</h1>
        <form>
            Product name: <input type="text" name="productName"><br>
            Description: <textarea name="description" cols = 50 rows = 4></textarea><br>
            Price: <input type="text" name="price"><br>
            Category: <select name="catId">
                <option value="">Select One</option>
                <?php getCategories(); ?>
            </select> <br />
            Set Image Url: <input type = "text" name = "productImage"><br>
            <input type="submit" name="submitProduct" value="Add Product">
        </form>
    </body>
</html>