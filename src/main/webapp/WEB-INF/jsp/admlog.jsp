<!DOCTYPE html>    
<html>    
<head>    
    <title>Admin Login Form</title>    
    <link rel="stylesheet" type="text/css" href="css/style.css">   
    <style type="text/css">
    body  
{  
    margin: 0;  
    padding: 0;  
    background-image:url("images/second.png")  ;
    background-repeat: no-repeat;
    font-family: 'Arial'; 
    background-attachment: fixed;
    background-size: 1865px;
    background-position: center; 
}  
.login{  
       width: 311px;
    overflow: hidden;
    margin: auto;
    margin: 20 0 0 450px;
    padding: 80px;
    background: hsl(230deg 88% 61% / 23%);
    border-radius: 29px;
    height: 219px;
    margin left: 1; 
          
}  
h2{  
    text-align: center;  
    color: #277582;  
    padding: 20px; 
    font-family:Poppins, sans-serif; 
}  
label{  
    color: #202124;  
    font-size: 17px;  
    font-family: Poppins, sans-serif;
}  
#Uname{  
    width: 300px;  
    height: 30px;  
    border: none;  
    border-radius: 9px;  
    padding-left: 8px;  
}  
#Pass{  
    width: 300px;  
    height: 30px;  
    border: none;  
    border-radius: 9px;  
    padding-left: 8px;  
      
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
.kart {
    width: 142px;
    height: 62px;
    background-color: white;
    border-radius: 27px;
    margin-left: 90px;
    font-family: system-ui;
    border-block-color: inherit;
    border-color: #4460f3;
    }
a{  
    float: right;  
    background-color: grey;  
}
    </style> 
</head>    
<body>    
    <h2>Login Page</h2><br>    
    <div class="login">    
    <form id="login" method="post" action="login2">    
        <label><b>Employee ID     
        </b>    
        </label>    
        <input type="text" name="eid" id="Uname" placeholder="eid">    
        <br><br>    
        <label><b>Password     
        </b>    
        </label>    
        <input type="Password" name="Pass" id="Pass" placeholder="Pass">    
        <br><br>    
        <input class="kart" type="submit" value="Login"/>   
        <br><br>        
    </form>     
</div>    
</body>    
</html>