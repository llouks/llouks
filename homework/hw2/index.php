

<!DOCTYPE html>
<html>
    <style>
      h1{
         
          color: white;
          text-align: center;
          font-size:1.8em;
      
      }
      body {
          background: black;
      }
      
      
      #main {
          
          text-align: center;
          color: white;
         background-image:url("img/background.jpg");
         font-size:1em;
         
      }
      
      #ncaaBanner {
          text-align: center;
          padding-left: 540px;
      }
    
       
        
    </style>
    
    <head>
        <title> Homework #2: Recruiting</title>
        <meta charset ="utf-8"/>
    </head>
    
        <img id ="ncaaBanner" src="img/ncaa.jpg"  alt ="Picture of NCAA Basketball logo" />
    
     <div id = "main">
    <p>
       
         <div id = "directions">
        <ul> <p><strong>DIRECTIONS:</strong></p>
             <p><strong>CLICK SEARCH:</strong> Where will you sign your NLI (National Letter of Intent) ?</p>
             <p>
                 Match The College Logos to Determine Who you are going to play for
             </p>
               The Universities Recruiting you:
               Duke , 
               North Carolina , 
               Michigan State , 
               Texas Christian , 
               Virginia , 
               Oregon
        </ul>
    </p>
    </div>
 
    
    <body>
        
        <?php
        function displayPoints($randomValue1 , $randomValue2, $randomValue3){
                echo "<div id = 'output'> ";
                if($randomValue1 == $randomValue2 && $randomValue2 == $randomValue3) {
                    switch ($randomValue1){
                    case 0: $totalPoints = Duke;
                        echo "<h1>You Signed with Duke!</h1>";
                        break;
                    case 1: $totalPoints = UNC;
                     echo "<h1>You Signed with North Carolina!</h1>";
                        break;
                    case 2: $totalPoints = MSU;
                         echo "<h1>You Signed with Michigan State!</h1>";
                        break;
                    case 3: $totalPoints = TCU;
                     echo "<h1>You Signed with Texas Christian!</h1>";
                        break;
                    case 4: $totalPoints = Oregon;
                     echo "<h1>You Signed with Oregon!</h1>";
                        break;
                    case 5: $totalPoints = Virginia;
                     echo "<h1>You Signed with Virginia!</h1>";
                        break;
                    }
                     echo "<h2> You Will Attend $totalPoints to pursue you're College Basketball Career !</h2>";
                     }else{
                         echo "<h3> Keep Looking for a School!</h3>";
                    }
                    echo "</div>";
                }
            
           
           function displaySymbol($randomValue , $pos) {
              switch ($randomValue) {
                    
                    case 0: $symbol = "duke";
                            break;
                    case 1: $symbol = "unc";
                            break;
                    case 2: $symbol = "msu";
                            break;    
                    case 3: $symbol = "tcu";
                            break;    
                    case 4: $symbol = "oregon";
                            break;    
                    case 5: $symbol = "virginia";
                            break;    
                }            
            
               echo "<img id = 'reel$pos'src='img/$symbol.png' width='400' alt=\"$symbol\" title=\"$symbol\" />";
                
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
        <input type="submit" value="Search"/>
    </form>
    <div id = "rules">
    </div>

    <footer>
        
        <hr> CST 336 Internet Programming. 2018 &copy; Logan Louks<br />
                <strong> Disclaimer: <strong>
                  All information in this website belongs to Logan Louks, and is used for Academic and Business purposes.
                  <a href="http://csumb.edu">California State University, Monterey Bay</a>
                   <p><img id ="csumbLogo" src="img/csumblogo.png"  alt ="Picture of CSU Monterey logo (Otter)" /></p>
    </footer>
    
</html>