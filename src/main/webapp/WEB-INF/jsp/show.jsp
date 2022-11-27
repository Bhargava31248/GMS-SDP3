<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<!DOCTYPE html>
<html>
<head>
<style>
.btn:not(:disabled):not(.disabled) {
    cursor: pointer;
    margin-top: 90px;
    width: 225px;
    height: 51px;
    margin-left: 74px;
</style>
<meta charset="ISO-8859-1">
<title>Admin</title>
</head>
<body style="background-image: url(images/admin.jpg);
    background-size: cover;
    background-repeat: no-repeat;
    /* background-color: #fef2dc; */
    margin-top: inherit;">
    <h1 style="width: 381px;
    margin-top: 64px;
    font-family: 'Segoe UI', Tahoma, sans-serif;
    margin-left: 423px;"
    > Welcome Admin</h1>
    <a class="btn btn-primary" href="/compdetails">View All Complaints Here</a><br>
</body>
</html>