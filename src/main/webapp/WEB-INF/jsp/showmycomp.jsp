<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"> 
<body style=" background-image: url(images/showmycomp.jpg);
    background-size: 1616px;
    background-position: left;
    background-repeat: no-repeat;">
  <h1>Your Complaints</h1>
  <div class="table-responsive" style="    width: 608px;">
  <table class="table" border="2" width="70%" cellpadding="2">
  <tr><th>Id</th><th>Name</th><th>Salary</th><th>Complaint</th></tr>
    <c:forEach var="emp" items="${emp}"> 
    <tr>
    <td>${emp.eid}</td>
    <td>${emp.name}</td>
    <td>${emp.email}</td>
    <td>${emp.comp}</td>
    </tr>
    </c:forEach>
    </table>
    </div>
    
    <br/>
</body>