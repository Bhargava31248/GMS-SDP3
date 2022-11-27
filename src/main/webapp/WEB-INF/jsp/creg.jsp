<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<style>
.sahil{
    font-family: 'Segoe UI', Tahoma, sans-serif;
    width: 411px;
    overflow: hidden;
    margin: auto;
    margin: 20 0 0 450px;
    padding: 63px;
    background: #aaddff59;
    border-radius: 15px;
    height: 358px;
    /* left: 120px; */
    /* top: 187px; */
    margin-left: 547px;
    margin-top: 72px;
}


</style>
<centre><h2>Register</h2></centre>
<div class="sahil">


<form:form method="post" action="cinsert">
<table>
    <tr>
        <td>Employee Id:</td>
        <td><form:input path="eid"></form:input></td>
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
        <td>Complaint:</td>
        <td><form:input path="comp"></form:input></td>
        
    </tr>
    <tr>
        <td><input  class="btn btn-primary" type="submit" value="Complain"/></td>
    </tr>
</table>
</form:form>
</div>