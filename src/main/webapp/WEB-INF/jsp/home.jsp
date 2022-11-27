
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
.btn-primary {
    color: #fff;
    background-color: #202124;
    border-color: #fcd90e;
    margin-top: 96px;
</style>
<body style="    background-image: url(images/login.jpg);
    background-repeat: no-repeat;">
<centre><h1>Hello ${name}  !!!</h1></centre>
  <h2>Your Details</h2>  </br>
<table>
    <tr>
           <td>Name:</td>
           <td>${name}</td>
    </tr>
    <tr>
           <td>Email:</td>
           <td>${pno}</td>
    </tr>
    <tr>
           <td>Phone:</td>
           <td>${dept}</td>
    </tr>
    <tr>
           <td>Department:</td>
           <td>${email}</td>
    </tr>
    <tr>
           <td>Designation:</td>
           <td>${desig}</td>
    </tr>
</table> </br>
<h2>${un}</h2></br>
<a  class="btn btn-primary" href="/cform">Complain Here !!!</a> </br>
<a  class="btn btn-primary" href="/showmycomp">View Your Complaints Here</a>
<a class="btn btn-primary"  href="/uploader">Upload File Here</a>  </br>
<a class="btn btn-primary"  href="/awsuploader">AWS Upload File Here</a>  </br>
</body>
</html>