       //VARIABLES
             var selectedWord = "";
             var selectedHint = "";
             var board = "";
             var remainingGuesses = 6;
             var words = [{ word:"snake", hint: "It's a Reptile!"}, 
                          {word:"beetle", hint: "It's an Insect!"},
                          {word:"monkey", hint: "It's a Mammal!"},
                          {word:"dog", hint: "It's a Pet!"},
                          {word:"shark", hint: "It's a Sea Creature!"},
                          {word:"horse", hint: "It's another name for Stallion!"}];
             var alphabet= ['A','B','C','D', 'E', 'F','G','H', 'I', 'J','K','L'
             ,'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'];
             
             startGame();
             
             function startGame() {
                 pickWord();
                 initBoard();
                 updateBoard();
                 createLetters();
             }
             
             function endGame() {
                 $("#letters").hide();
                 
                 if(true) {
                     $('#won').show();
                 }else {
                     $('#lost').show();
                 }
             }
             
             //alert(words[0]);
             //console.log(words[0]);
             
              function initBoard() {
                 for (var i=0; i<selectedWord.length; i++) {
                     board +="_";
                 }
                 console.log(board);
             }
             
             
             
             function pickWord() {
                var randomInt = Math.floor(Math.random() * words.length );
                selectedWord = words[randomInt].word.toUpperCase();
                selectedHint = words[randomInt].hint;
             }
             
            //  for (var i=0; i < selectedWord.length; i++) {
            //      board.push("_");
            //  }
            
             
             function updateBoard() {
                 $("#word").empty();
                 for (var letter of board) {
    
                    document.getElementById("word").innerHTML += letter + " ";
                     
                 }
                 $("#word").append("</br></br>");
                 $("#word").append("<button type='button' onClick='showHint()'>HINT</button>");
             }
             
             function showHint() {
                 alert("Hint: " + selectedHint);
             }
             
             $(".hint").click(function() {
                showHint(); 
             });
             
             function createLetters() {
                 for (var letter of alphabet) {
                     $("#letters").append("<button class= 'letter' id='"+ letter + "'>" + letter +"</button> ");
                 }
             }
             
             function disableButton (btn) {
                 btn.prop("disabled", true);
                 btn.attr("class", "btn btn-danger");
             }
             
             $(".replayBtn").on("click", function() {
                location.reload(); 
             });
             
             $(".letter").click(function() {
                checkLetter($(this).attr("id"));
                disableButton($(this));
             });
             
             function checkLetter(letter){
                 var positions = new Array();
                 
                 for(var i=0; i<selectedWord.length; i++) {
                     console.log(selectedWord);
                     if(letter == selectedWord[i]) {
                         positions.push(i);
                     }
                 }
                 
                 if(positions.length > 0) {
                     updateWord(positions,letter);
                     
                     if(!board.includes('_')) {
                         endGame(true);
                     }
                 }else {
                     remainingGuesses-=1;
                     updatePic();
                 }
                 if(remainingGuesses<=0) {
                     endGame(false);
                 }
             }
             
             function updateWord(positions,letter) {
                 for (var pos of positions) {
                     board = replace(board, pos, letter);
                 }
                 updateBoard();
             }
             
             function replace(str, index, value) {
                 return str.substr(0,index) + value + str.substr(index + value.length);
             }
             
             function updatePic() {
                 $("#hangImg").attr("src", "img/stick_" + (6 - remainingGuesses) + ".png");
             }
             