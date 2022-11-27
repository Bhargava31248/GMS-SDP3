<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <h1>Grievances List</h1>
  <div class="table-responsive">
  <table class="table" border="2" width="70%" cellpadding="2">
  <tr><th>Id</th><th>Name</th><th>Salary</th><th>Complaint</th><th>Status</th></tr>
    <c:forEach var="emp" items="${emp}"> 
    <tr>
    <td>${emp.sno}</td>
    <td>${emp.eid}</td>
    <td>${emp.name}</td>
    <td>${emp.email}</td>
    <td>${emp.comp}</td>
    <td>
    <form id="mail" method="post" action="sendmail">
    <input type="hidden" name="email" id="email" value="${emp.email}">
    <input type="submit" value="Send" class="btn btn-primary"/>
    </form>
    </td>
    </tr>
    </c:forEach>
    </table>
    <br/>
   </div>