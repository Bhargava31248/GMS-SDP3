<!DOCTYPE html>    
<html>    
<head>    
    <title>User login Form</title>
    <meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
    <link rel="stylesheet" type="text/css" href="css/style.css">  
     

<body style="background-image:url(images/userreg.jpg);background-repeat:no-repeat;background-attachment: fixed;background-size: auto 100%;background-position: inherit;">
<!-- Navbar (sit on top) -->
<div class="w3-side">
  <div class="w3-bar w3-white w3-wide w3-padding w3-card">
    <a href="#home" class="w3-bar-item w3-button"><b>SDP</b> Project</a>
    <!-- Float links to the right. Hide them on small screens -->
    <div class="w3-right w3-hide-small">
      <a href="/admformlog" class="w3-bar-item w3-button">Admin Login Here</a>
      <a href="/formlog" class="w3-bar-item w3-button">Login Here</a>
      <a href="/form" class="w3-bar-item w3-button">Register Here</a>
    </div>
  </div>
</div>
<div style="width: 553px;
    overflow: hidden;
    margin: auto;
    margin: 20 0 0 450px;
    padding: 80px;
    background: hsl(230deg 88% 61% / 23%);
    border-radius: 29px;
    height: 403px;
    margin-top: 160px;
    margin-left: 497px;
   ">
<form:form method="post" action="insert">
<table style="    font-family: 'Segoe UI', Tahoma, sans-serif;
    font-weight: 500;">
    <tr>
        <td>Employee Id:</td>
        <td ><form:input   path="eid"></form:input></td>
    </tr>
    <tr>
        <td>Name:</td>
        <td><form:input path="name"></form:input></td>
    </tr>
    <tr>
        <td>Phone:</td>
        <td><form:input path="pno"></form:input></td>
    </tr>
    <tr>
        <td>Email:</td>
        <td><form:input path="email"></form:input></td>
    </tr>
    <tr>
        <td>Department:</td>
        <td><form:input path="dept"></form:input></td>
    </tr>
    <tr>
        <td>Designation</td>
        <td><form:input path="desig"></form:input></td>
    </tr>
    <tr>
        <td>Password:</td>
        <td><form:input path="pass"></form:input></td>
    </tr>
    <tr>
        <td><input style="width: 142px;
    height: 62px;
    background-color: white;
    border-radius: 27px;
    margin-left: 90px;
    font-family: system-ui;
    border-block-color: inherit;
    border-color: #4460f3;" type="submit" value="Register"/></td>
    </tr>
</table>
</form:form>
</div>
</body>


