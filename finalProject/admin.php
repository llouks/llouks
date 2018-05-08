<?php

session_start();

include 'dbConnection.php';
include 'partials/functions.php';


$conn = getDatabaseConnection("teamproject");

if(!isset( $_SESSION['adminName']))
{
  header("Location:index.php");
}

function displayAllProducts(){
    global $conn;
    $sql="SELECT * FROM product";
    $statement = $conn->prepare($sql);
    $statement->execute();
    $records = $statement->fetchAll(PDO::FETCH_ASSOC);
    
    //print_r($records);

    return $records;
}


?>

<!DOCTYPE html>
<html>
    <head>
        <title> Admin Main Page </title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <title>Lo's Game Center</title>
        <style>
            
            form {
                display: inline;
            }
            
            body {
                text-align:center;
            }
            
        </style>
        
        <script>
            
            function confirmDelete() {
                
                return confirm("Are you sure you want to delete it?");
                
            }
            
        </script>
        
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
                        <li><a href = 'index.php'>Admin Login</a></li>
                        <li><a href = 'agregate.php'>Agregate (Admin Only)</a></li>
                        <li><a href = 'home.php'>Logout</a></li>
                    </ul>
                </div>
            </nav>
            <br /> <br /> <br />
        </div>
    </div>

    <body>


        
        <h1> Admin Main Page </h1>
        
        <h3> Welcome <?=$_SESSION['adminName']?>! </h3>
        
        <br />
        <form action="addProduct.php">
            <input type="submit" name="addproduct" value="Add Product"/>
        </form>
    
        <br /> <br />
        
        
        
        <strong> Products: </strong> <br />
        
        <?php $records=displayAllProducts();
            foreach($records as $record) {
                echo "[<a href='updateProduct.php?productId=".$record['productId']."'>Update</a>]" . "          ";
                //echo "[<a href='deleteProduct.php?productId=".$record['productId']."'>Delete</a>]";
                
                echo "<form action='deleteProduct.php' onsubmit='return confirmDelete()'>";
                echo "<input type='hidden' name='productId' value= " . $record['productId'] . " />";
                echo "<input type='submit' value='Remove'>";
                echo "</form>";
                
                echo $record['productName'] . "   " . " ";
                echo  "  ". "     " . $record['price'];
                echo '<br>';
            }
        
        ?>
        
        

    </body>
</html>