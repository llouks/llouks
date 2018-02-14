<!DOCTYPE html>
<html>
    <style>
        @import url("css/styles.css");
       
        
    </style>
    
    <head>
        <title> LAB 2: 777 Slot Machine </title>
        <meta charset ="utf-8"/>
    </head>
    
    <div id = "main">
    <h2>               WELCOME TO THE CSUMB SLOT MACHINE</h2>
    

    <body>
        
        <?php
        function displayPoints($randomValue1 , $randomValue2, $randomValue3){
                echo "<div id = 'output'> ";
                if($randomValue1 == $randomValue2 && $randomValue2 == $randomValue3) {
                    switch ($randomValue1){
                    case 0: $totalPoints = 1000;
                        echo "<h1>Jackpot!</h1>";
                        break;
                    case 1: $totalPoints = 500;
                        break;
                    case 2: $totalPoints = 750;
                        break;
                    case 3: $totalPoints = 800;
                        break;
                    case 4: $totalPoints = 250;
                        break;
                    case 5: $totalPoints = 350;
                        break;
                    }
                     echo "<h2> You Won $totalPoints points!</h2>";
                     }else{
                         echo "<h3> Try Again!</h3>";
                    }
                    echo "</div>";
                }
            
           
           function displaySymbol($randomValue , $pos) {
              switch ($randomValue) {
                    
                    case 0: $symbol = "seven";
                            break;
                    case 1: $symbol = "orange";
                            break;
                    case 2: $symbol = "cherry";
                            break;    
                    case 3: $symbol = "bar";
                            break;    
                    case 4: $symbol = "lemon";
                            break;    
                    case 5: $symbol = "grapes";
                            break;    
                }            
            
               echo "<img id = 'reel$pos'src='img/$symbol.png' width='70' alt=\"$symbol\" title=\"$symbol\" />";
                
            }

        //Displays Symbols/Score
        
            for($i=1; $i<4; $i++){
                ${"randomValue" . $i } = rand(0,5);
                displaySymbol(${"randomValue" . $i} , $i);
            }
            displayPoints($randomValue1, $randomValue2, $randomValue3);
            
            
            function play() {
                for ($i=1; $i<4; $i++) {
                    ${"randomValue" . $i } = rand(0,5);
                    displaySymbol(${"randomValue" . $i});
                }
                displayPoints($randomValue1 , $randomValue2 , $randomValue3);
            }
        ?>

    </body>
    
    <form>
        <input type="submit" value="Spin!"/>
    </form>
    <div id = "rules">
    </div>
    <br></br>
    <footer>
     <p>
         <br></br>
         <br></br>
         <br></br>
         <br></br>
         <br></br>
         <br></br>
         <br></br>
          <br></br>
         <br></br>
         <br></br>
         <br></br>
         <br></br>
         
        <ul> <p><strong>DIRECTIONS:</strong> Test your luck by clicking 'Spin!</p>
             <p><strong>Scoring:</strong></p> 
             Three Lemons = 250 
             Three Grapes = 350
             Three Oranges = 500
             Three Cherries = 750 
             Three Bars = 850
             Three “Sevens” = 1000 <strong>(Jackpot)</strong>
        </ul>
    </p>
        
        <hr> CST 336 Internet Programming. 2018 &copy; Logan Louks<br />
                <strong> Disclaimer: <strong>
                  All information in this website belongs to Logan Louks, and is used for Academic and Business purposes.
                  <a href="http://csumb.edu">California State University, Monterey Bay</a>
                   <p><img id ="csumbLogo" src="img/csumblogo.png"  alt ="Picture of CSU Monterey logo (Otter)" /></p>
    </footer>
    
</html>