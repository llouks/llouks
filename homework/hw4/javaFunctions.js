function getAnswers () {
    //Question 1
    $("#answer1").empty();
    var answerOne = document.getElementById("answerQ1").value;
    if (answerOne == "celtics" || answerOne == "Celtics") {
        $("#answer1").append("<h4 style= 'color:green; text-shadow:1px 1px black'>Correct!</h4>");
    } else if ("#answerQ1" == "") {
        alert("Question #1 has not been answered!");
        return;
    }else {
         $("#answer1").append("<h4 style= 'color:red; text-shadow:1px 1px black'>Incorrect!, Answer = Celtics</h4>");
    }
    
    //Question 2
    $("#answer2").empty();
    var choices = document.getElementById("choices");
    var answerChoices = choices.options[choices.selectedIndex].value;
    if(answerChoices == 4) {
         $("#answer2").append("<h4 style= 'color:green; text-shadow:1px 1px black'>Correct!</h4>");
    }else if ("#answerQ1" == "") {
        alert("Question #2 has not been answered!");
        return;
    } else {
        $("#answer2").append("<h4 style= 'color:red; text-shadow:1px 1px black'>Incorrect!, Answer = Wilt Chamberlain</h4>");
    }
    
    //Question 3
      $("#answer3").empty();
    var answerThree = document.getElementById("answerQ3").value;
    if (answerThree == "Michael Jordan" || answerThree == "michael jordan") {
        $("#answer3").append("<h4 style= 'color:green; text-shadow:1px 1px black'>Correct!</h4>");
    } else if ("#answerQ1" == "") {
        alert("Question #3 has not been answered!");
        return;
    }else {
         $("#answer3").append("<h4 style= 'color:red; text-shadow:1px 1px black'>Incorrect!, Answer = Michael Jordan</h4>");
    }
    
    //Question #4
    $("#answer4").empty();
     var answerFour = "";
    if(document.getElementById("choice3").checked) {
        answerFour= document.getElementById("choice3").value;
        $("#answer4").append("<h4 style= 'color:green; text-shadow:1px 1px black'>Correct!</h4>");
    }else if (answerFour == "") {
        alert("Question #4 has not been answered!");
        return;
    }else {
         $("#answer4").append("<h4 style= 'color:red; text-shadow:1px 1px black'>Incorrect!, Answer = Antawn Jamison</h4>");
    }
    
    //Question 5
    $("#answer5").empty();
    var choices2 = document.getElementById("choices2");
    var answerChoices2 = choices2.options[choices2.selectedIndex].value;
    if(answerChoices2 == 3) {
         $("#answer5").append("<h4 style= 'color:green; text-shadow:1px 1px black'>Correct!</h4>");
    }else if ("#answerQ5" == "") {
        alert("Question #5 has not been answered!");
        return;
    } else {
        $("#answer5").append("<h4 style= 'color:red; text-shadow:1px 1px black'>Incorrect!, Answer = Patrick Ewing</h4>");
    }

    
}