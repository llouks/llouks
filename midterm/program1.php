<?php
    function display($month, $location, $country, $order ){
        if($month == 'November') {
            $monthDay = 30;
        } else if ($month == 'December'){
            $monthDay = 31;
        } else if ($month == 'January'){
            $monthDay = 31;
        } else if ($month == 'Febuary'){
            $monthDay = 28;
        }
        
        if($country == 'Mexico') {
            $countrySelection = array("acapulco", "cabos" , "cancun", "chichenzita", "huatulco", "mexico_city");
        } else if ($country == 'France') {
            $countrySelection = array("bordeaux", "le_havre", "lyon", "montpellier", "paris", "strasbourg");
        } else if ($country == 'USA') {
            $countrySelection = array("chicago", "hollywood", "las_vegas", "ny", "washington_dc", "yosemite");
        }
        
         for ($i=0; $i <$location; $i++) {
            $randDay[$i] = rand(1, $monthDay);
         }
        
        echo "<table>";
        echo "<tr>";
        for ($i = 1; $i <= $monthDay; $i++) {
            $index = rand(0, count($countrySelection) - 1);
            echo "<td>" . $i . "<br /> ";
            for ($h=0; $h<count($randDay); $h++) {
                if ($i == $randDay[$h]) {
                    echo "<img src='img/$country/$countrySelection[$index].png' title='$countrySelection[$index]' alt='$countrySelection[$index]'>";
                    unset($countrySelection[$index]);
                    array_values($countrySelection);
                } 
            }
            echo "</td>";
            if ($i % 7 == 0) {
                echo "</tr>";
            }
        }
        echo "</table>";
    }

?>

<!DOCTYPE html>
<html>
    <head>
        <title>Midterm: Winter Vacation</title>
        <meta charset ="utf-8"/>
        <style>
            body{
                text-align:center;
                font-size:2em;
            }
            
            table, td {
                margin 0 auto;
                border: 1px solid black;
                text-align:center;
            }
            
            td {
                width:150px;
                height: 100px;
            }
            #table {
                  align:center;  
            }
            
        </style>
    </head>
    
    <body>
        <header><h1>Winter Vacation Plan:</h1></header>
        
        <form>
            SELECT MONTH:
            <select name="month" >
            <option value="">SELECT</option>
            <option value="November">November</option>
            <option value="December">December</option>
            <option value="January">January</option>
            <option value="February">February</option>
            </select>
            </br>
            </br>
            
            SELECT # OF LOCATIONS:
            <input type="radio" name="location" value="3" id="three"/>
            <label for= "three" >Three</label>
            <input type="radio" name="location" value="4" id="four"/>
            <label for= "four" >Four</label>
            <input type="radio" name="location" value="5" id="five"/>
            <label for= "five" >Five</label>
            </br>
            </br>
            
            SELECT COUNTRY:
            <select name= "country">
                <option value="USA">USA</option>
                <option value="France">France</option>
                <option value="Mexico">Mexico</option>
            </select>
            </br>
            </br>
            
            VISIT LOCATIONS IN ALPHABETICAL ORDER:
             <input type= "radio" name="order" value="A" id="a_z"/>
             <label for="a_z">A-Z</label>
             <input type= "radio" name="order" value="Z" id="z_a"/>
             <label for="z_a">Z-A</label>
             </br>
             </br>
            
            <input type="submit" name="submit" value="Create Itinerary"/>
            </form>
            
            <?php
            if (isset($_GET['submit'])) {
                if (!empty($_GET['month'])) {
                    if (!empty($_GET['location'])) {
                        $finalLocation= $_GET['location'];
                        $finalMonth = $_GET['month'];
                        $finalOrder = $_GET['order'];
                        $finalCountry = $_GET['country'];
                        echo "<br /> <hr /> <br />";
                        echo $finalMonth . " Itinerary <br /> <br />";
                        echo "Visiting " . $finalLocation . " places in " . $finalCountry . "<br /> <br />";
                    display($finalMonth, $finalLocation, $finalCountry, $finalOrder);
                    } else {
                        echo "You must specify the number of locations! <br />";
                    }
                    } else {
                        echo "You must select a Month! <br />";
                    }
             }

            ?>
            
            
        
        </br>
        </br>
          
    <table id= "table" border="1" width="600">
    <tbody><tr><th>#</th><th>Task Description</th><th>Points</th></tr>
    <tr style="background-color:#FFC0C0">
      <td>1</td>
      <td>The page includes the form elements as the Program Sample: dropdown menu, radio buttons, etc.</td>
      <td width="20" align="center">5</td>
      <tr style="background-color:green">
    </tr>
   	<tr style="background-color:green">
      <td>2</td>
      <td>Errors are displayed if month or number of locations are not submitted.</td>
      <td width="20" align="center">5</td>
    </tr> 
    <tr style="background-color:#FFC0C0">
      <td>3</td>
      <td>Header and Subheader are displayed with info submitted. </td>
      <td align="center">5</td>
    </tr>    
	<tr style="background-color:green">
      <td>4</td>
      <td>A table with days and weeks is displayed when submitting the form</td>
      <td align="center">5</td>
    </tr> 
    <tr style="background-color:green">
      <td>5</td>
      <td>The number of days in the table correspond to the month selected</td>
      <td align="center">10</td>
    </tr>
    <tr style="background-color:green">
      <td>6</td>
      <td>Random images are displayed in random days</td>
      <td align="center">5</td>
    </tr>       
    <tr style="background-color:green">
      <td>7</td>
      <td>The number of random images correspond to the number of locations and country submitted</td>
      <td align="center">10</td>
    </tr>  
    <tr style="background-color:green">
      <td>8</td>
      <td>The proper name of the location is displayed below the image 
      		(e.g. "New York", "Las Vegas")</td>
      <td align="center">10</td>
    </tr>  
    <tr style="background-color:#FFC0C0">
      <td>9</td>
      <td>The list of months submitted along with the country and number of locations is displayed below the table (using Sessions)</td>
      <td align="center">15</td>
    </tr>    
    <tr style="background-color:#FFC0C0">
      <td>10</td>
      <td>Random locations should be ordered alphabetically, if user checks corresponding radio button (A-Z or Z-A). </td>
      <td align="center">15</td>
    </tr>        
    <tr style="background-color:#FFC0C0">
      <td>11</td>
      <td>The web page uses Bootstrap and has a nice look. </td>
      <td align="center">5</td>
    </tr>        
    <tr style="background-color:#99E999">
      <td>12</td>
      <td>This rubric is properly included AND UPDATED (BONUS)</td>
      <td width="20" align="center">2</td>
    </tr>     
     <tr>
      <td></td>
      <td>T O T A L </td>
      <td width="20" align="center"><b></b></td>
    </tr> 
  </tbody></table>

        

    </body>
</html>