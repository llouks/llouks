<?php
    
    session_start();
    
    if (!isset($_SESSION['number']))
    {
        $_SESSION['number'] = rand(1,100);
    }
    if (isset($_GET['reset']))
    {
        unset($_SESSION['number']);
        unset($_SESSION['tries']);
    }
    if (!isset($_SESSION['tries']))
    {
        $_SESSION['tries'] = 0;
    }
    if (!isset($_SESSION['history']))
    {
        $_SESSION['history'] = array();
    }
    
    include 'config/dbConn.php';
    $conn = getDatabaseConnection("guessNumber");
    function insertResult($score)
    {
        global $conn;
        $number = $score[0];
        $tries = $score[1];
   
    
        $sql = "INSERT INTO history
            ( numGuess, numAttempt) 
             VALUES ( :number, :tries)";
    
        $namedParameters = array();
        $namedParameters[':number'] = $number;
        $namedParameters[':tries'] = $tries;
    
        $statement = $conn->prepare($sql);
        $statement->execute($namedParameters);
    }
    function displayHistory()
    {
        global $conn;
        $sql = "SELECT * FROM history";
        $stmt = $conn->prepare($sql);
        $stmt->execute();
        $records = $stmt->fetchAll(PDO::FETCH_ASSOC);
        
        foreach ($records as $record) 
        {
                        echo '<h4>You guessed the number ' . $record['numGuess'] . ' in ' . $records['numAttempt'] . ' attempts </h4>';            }
        }
?>

<!DOCTYPE html>
<html>
    <head>
        <title>Guess the Numbers</title>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <blockquote>
        <h2> Guess a number between 1 and 100!</h2>
        <form>
            
            Guess: <input type="text" name="guess" size="5"/>
            <br /><br />
          
            <input type="submit" value="Guess Number" name="guessForm"/>
            <br /><br />
             <input type="submit" value="Give Up" name="giveUp"/>
             <input type="submit" value="Play Again" name="reset"/>
            
        </form>
                
        <hr>
        
        </blockquote>
        <blockquote>
        <?php
        if (isset($_GET['giveUp'])) {
            echo "<h3> The number was: <br />";
            echo $_SESSION['number'] . "</h3>";
        }
            if (isset($_GET['guessForm']))
            {
                if (isset($_GET['guess']))
                {
                    echo '<h4>Number of tries: ' . $_SESSION['tries'] . '</h4>';
                    if ($_GET['guess'] < $_SESSION['number'])
                    {
                        echo '<h4 style="color: red">The number should be higher</h4>';
                        $_SESSION['tries']++;
                    }
                    else if ($_GET['guess'] > $_SESSION['number'])
                    {
                        echo '<h4 style="color: red">The number should be lower</h4>';
                        $_SESSION['tries']++;
                    }
                    else 
                    {
                        echo '<h4 style="color: green">You\'ve guessed the number!</h4>';
                        $tmp = array($_SESSION['number'], $_SESSION['tries']);
                        array_push($_SESSION['history'], $tmp);
                        insertResult($tmp);
                    }
                }
            }
        ?>
        </blockquote>
        <blockquote>
            
            <?php 
            
                if (!empty($_SESSION['history']))
                {
                    echo '<h3>Guess History</h3>';
                    displayHistory();
                }
            ?>
        </blockquote>
    </body>
</html>