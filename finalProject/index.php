<!DOCTYPE html>
<html>
    <head>
        <title>Admin Login </title>
    </head>
      <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> 
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
           
       <style>
       #submit, login {
           text-align: center;
       }
       </style>
       
        <script>
        function login () {
            
            $.ajax({

                type: "GET",
                url: "loginProcess.php",
                data:{
                    username:username,
                    password:password
                },
                success:function(response) {
                if(response == "success"){
                    location.href="admin.php"
                } else {
                    alert("Wrong username or Password");
                    }
                
                }
            });//ajax
            
            
        }
        
        $(document).ready(function (){
            $("#loginBtn").click(function (){
                username = document.getElementById("username").value;
                password = document.getElementById("password").value;
                login();
            });
        });
    </script>
    
    <body>
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
                    </ul>
                </div>
            </nav>
            <br /> <br /> <br />
        
        
        
        <h1>Lo's Game Center - Admin Login</h1>
        
        <form id="login" method = "POST" action="loginProcess.php">
             <!--<img class="profile-img-card" src="//lh3.googleusercontent.com/-6V8xOA6M7BA/AAAAAAAAAAI/AAAAAAAAAAA/rzlHcD0KYwo/photo.jpg?sz=120" alt="" /> -->
            <img id="profile-img" class="profile-img-card" src="//ssl.gstatic.com/accounts/ui/avatar_2x.png" />
            <p id="profile-name" class="profile-name-card"></p>
            <form class="form-signin">
                <span id="reauth-email" class="reauth-email"></span>
                 Username: <input type="text" name="username"/> </br>
                 Password: <input type="password" name= "password" /> </br>
                <div id="remember" class="checkbox">
                </div>
                <button class="btn btn-lg btn-primary btn-block btn-signin" type="submit" id="loginBtn">Sign in</button>
                </form><!-- /form -->
            </div><!-- /card-container -->
        </div><!-- /container -->
    </form>
<!--    <div id="login">
        <h1>Admin Login</h1>
        Username: <input type= "text" id="username" name = "username"/><br>
        Password: <input type= "password" id="password" name ="password"/><br>
        <input type="button" name="Login" value="Login" id="loginBtn"/>
    </div>-->


    </body>
</html>