

<?php
    session_start();
    
    function answerChoice2 ($selection) {
        if ($selection == $_GET['choices']) {
            return 'answered';
        }
    }
    
      function answerChoice5 ($selection) {
        if ($selection == $_GET['choices2']) {
            return 'answered';
        }
    }
    
    function answerChecker ($answerQ1, $answerQ2, $answerQ3, $answerQ4, $answerQ5 ) {
        $score = 0;
        if($answerQ1 == 'celtics' || $answerQ1 == 'Celtics') {
            $score++;
        }
        if($answerQ2 == 'Wilt Chamberlain') {
            $score++;
        }
        if($answerQ3 == 'Michael Jordan' || $answerQ3 == 'michael jordan') {
            $score++;
        }
        if($answerQ4 == 'Antawn Jamison') {
            $score++;
        }
        if($answerQ5 == 'Patrick Ewing') {
            $score++;
        }
        return $score;
    }
    
    
    
    if(isset($_GET['submit'])) {
        $_SESSION['answerQ1'] = $_GET['answerQ1'];
        $_SESSION['answerQ3'] = $_GET['answerQ3'];
    }
    $answerQOne = $_SESSION['answerQ1'];
    $answerQThree = $_SESSION['answerQ3'];
    
?>

<!DOCTYPE html>
<html>
    <head>
        <title>Homework #3: Basketball Quiz </title>
        <meta charset= "utf-8"/>
        <link href="css/styles.css" rel="stylesheet" type="text/css" />
    </head>
    <div id = "main">
    <h1>Basketball Quiz</h1>
    <body>
        <form method= "get" action ="">
            
          
        <fieldset>
            <legend>Question #1</legend>
            <p>Who has won the most NBA Championships? (*Type Team Name*)</p>
            <input type= "text" name="answerQ1" value="<?php echo $answerQ1; ?>" />
        </fieldset>
        
      
        <fieldset>
            <legend>Question #2</legend>
            <p>Which NBA Player has scored 100 Points in a Game?</p>
            <select name = "choices">
                <option value= "">Select an Answer:</option>
                <option<?=answerChoice2('Kareem Abdual Jabbar')?>>Kareem Abdual Jabbar</option>
                <option<?=answerChoice2('Michael Jordan')?>>Michael Jordan</option>
                <option<?=answerChoice2('Kobe Bryant')?>>Kobe Bryant</option>
                <option<?=answerChoice2('Wilt Chamberlain')?> >Wilt Chamberlain</option>
            </select>
        </fieldset>
        
       
         <fieldset>
            <legend>Question #3</legend>
            <p>Who is considered the best NBA Player of All-Time? (*Type in First & Last Name*)</p>
            <input type= "text" name="answerQ3" value= "<?php echo $answerQ3; ?>" />
        </fieldset>
        
        
        <fieldset>
            <legend>Question #4</legend>
            <p>Who was the First NBA Player to Record back-to-back 50 Point Games?</p>
            <div class  = "label">
                <input type ="radio" id= "choice1" name="answer" value="James Harden">
                <label for="choice1">James Harden</label>
                <br/>
                 <input type ="radio" id= "choice2" name="answer" value="Lebron James">
                <label for="choice2">Lebron James</label>
                <br/>
                 <input type ="radio" id= "choice3" name="answer" value="Antawn Jamison">
                <label for="choice3">Antawn Jamison</label>
                <br/>
                 <input type ="radio" id= "choice4" name="answer" value="Russel Westbrook">
                <label for="choice1">Russel Westbrook</label>
                <br/>
            </div>
            <br/>
        </fieldset>
        
     
         <fieldset>
            <legend>Question #5</legend>
            <p>Who Was the NBA's First Lottery Pick?</p>
            <select name = "choices2">
                <option value= "">Select an Answer:</option>
                <option <?=answerChoice5('Kareem Abdual Jabbar')?>>Kareem Abdual Jabbar</option>
                <option <?=answerChoice5('Wilt Chamberlain')?>>Wilt Chamberlain</option>
                <option <?=answerChoice5('Patrick Ewing')?>>Patrick Ewing</option>
                <option <?=answerChoice5('Juluis "Dr. J" Erving')?>>Juluis "Dr. J" Erving</option>
            </select>
        </fieldset>
        
        <input id = 'submit' type="submit" name="submit" value= "Submit"/>    
    </form>  
    <br/>
    <br/>
    
    
    
   
    <?php
        if(isset($_GET['submit'])) {
            if(!empty($_GET['answerQ1'])) {
                if(!empty($_GET['choices'])) {
                    if(!empty($_GET['answerQ3'])) {
                        if(!empty($_GET['answer'])) { 
                            if(!empty($_GET['choices2'])) {
                                $answerQTwo = $_GET['choices'];
                                $answerQFour = $_GET['answer'];
                                $answerQFive = $_GET['choices2'];
                                echo "<h2> Final Score: " . answerChecker ($answerQOne , $answerQTwo, $answerQThree, $answerQFour, $answerQFive) . " /5 </h2>";
                            }else {
                                echo "<h3> Question #5 is Not Answered </h3>";
                            }
                        }
                            else {
                                echo "<h3> Question #4 is Not Answered </h3>";
                            }
                    }
                            else {
                                echo "<h3> Question #3 is Not Answered </h3>";
                            }
                }
                            else {
                                echo "<h3> Question #2 is Not Answered </h3>";
                            }
            }
                            else {
                                echo "<h3> Question #1 is Not Answered </h3>";
                            }
        }
    
    ?>
    
    
    </body>
    
    <footer>
        
         <hr> CST 336 Internet Programming. 2018 &copy; Logan Louks<br />
                <strong> Disclaimer: <strong>
                  All information in this website belongs to Logan Louks, and is used for Academic and Business purposes.
                  <a href="http://csumb.edu">California State University, Monterey Bay</a>
                   <p><img id ="csumbLogo" src="img/csumblogo.png"  alt ="Picture of CSU Monterey logo (Otter)" /></p>
        
    </footer>
    </div>
</html>