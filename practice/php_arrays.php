<?php

//DISPLAYS CONTENT IN ARRAY

 $cards = array("ace","jack");
 //print_r($cards); //for debugging purposes, shows all elements in array

 //echo $cards[0];
 
 //$cards[] = "jack"; //adds new element at the end of the array
 //array_push($cards, "queen", "king");
 
 //$cards[2] = "ten";

 //print_r($cards); 
 
 //displayCard($cards[3]);
 
 //print_r($cards);//Print Before Removal
 //echo "<hr>";
 
 //REMOVES LAST ELEMENT IN ARRAY
// $lastCard = array_pop($cards);
 //displayCard($lastCard);
 
 //print_r($cards); //Print After Removal
 //echo "<hr>";
 
 //$cards = array_values($cards);
 //echo "<hr>";
 //print_r($cards);
 
 // shuffle($cards);
 //echo "<hr>";
 //print_r($cards);
  //echo "<hr>";



//DISPLAY RANDOM CARDS
 $randomIndex = rand(0,count($cards)-1); //getting a random index
 displayCard($cards[$randomIndex]);
 echo "<hr>";
 
 $randomIndex = array_rand($cards); //getting a random index too
 displayCard($cards[$randomIndex]);
 echo "<hr>";
 
 
 function displayCard($cards) {
     
    //global $cards; //using variable that is outside of the function
    
    echo "<img src='../llouks/Challenge/cards/clubs/$cards.png' />";
 }
 

?>


<!DOCTYPE html>
<html>
    <head>
        <title> </title>
    </head>
    <body>

    </body>
</html>