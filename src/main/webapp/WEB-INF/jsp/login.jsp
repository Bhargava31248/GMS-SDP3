<!DOCTYPE html>    
<html>    
<head>    
    <title>Login Form</title>    
    <link rel="stylesheet" type="text/css" href="css/style.css">   
    <style type="text/css">
body  
{  
	background-image:url("images/user.jpg") ;
    margin: 0;  
    background-repeat:no-repeat;
    padding: 0;
    background-size: 1595px;
    background-attachment: fixed;  
    background-position: center;
    
    font-family: Poppins, sans-serif;  
}
.mo {
    font-family: 'Segoe UI', Tahoma, sans-serif;
    /* width: 100px; */
}  
.login {
    width: 301px;
    overflow: hidden;
    margin: auto;
    margin: 20 0 0 450px;
    padding: 63px;
    background: #aaddff59;
    border-radius: 15px;
    height: 229px;
    /* left: 120px; */
    /* top: 187px; */
    margin-left: 547px;
    margin-top: 72px;
          
}  
h2{  
    text-align: center;  
    color: #277582;  
    padding: 20px;  
}  
label{  
    color: #202124;
    font-size: 17px;  
}  
#Uname{  
    width: 300px;  
    height: 30px;  
    border: none;  
    border-radius: 3px;  
    padding-left: 8px;  
}  
#Pass{  
    width: 300px;  
    height: 30px;  
    border: none;  
    border-radius: 3px;  
    padding-left: 8px;  
      
} 
.arjun{
    width: 142px;
    height: 62px;
    background-color: white;
    border-radius: 27px;
    margin-left: 90px;
    font-family: system-ui;
    border-block-color: inherit;
    border-color: #4460f3;
    } 
.kart {
    font-family: 'Segoe UI', Tahoma, sans-serif;
}
#log{  
    width: 300px;  
    height: 30px;  
    border: none;  
    border-radius: 17px;  
    padding-left: 7px;  
    color: blue;  
  
  
}  
span{  
    color: white;  
    font-size: 17px;  
}  
a{  
    float: right;  
    background-color: grey;  
}
    </style> 
</head>    
<body>    
    <h2 class="mo">Login Page</h2><br>    
    <div class="login">    
    <form id="login" method="post" action="login1">    
        <label><b class="kart">Employee ID     
        </b>    
        </label>    
        <input type="text" name="eid" id="Uname" placeholder="eid">    
        <br><br>    
        <label><b>Password     
        </b>    
        </label>    
        <input type="Password" name="Pass" id="Pass" placeholder="Pass">    
        <br><br>    
        <input  class="arjun" type="submit" value="Login"/>   
        <br><br>        
    </form>     
</div>    
</body>    
</html>