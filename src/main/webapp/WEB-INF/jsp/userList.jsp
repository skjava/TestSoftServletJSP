<%-- 
    Document   : userList
    Created on : 21.01.2014, 19:41:40
    Author     : recber
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<c:url value="/resources/blueprint/ie.css" />" rel="stylesheet">
        <link href="<c:url value="/resources/blueprint/print.css" />" rel="stylesheet">
        <link href="<c:url value="/resources/blueprint/screen.css" />" rel="stylesheet">
        <title>User List</title>
    </head>
    <body>
  <div class="container"> 
 <b>User List</b>  

     <table>  
   <tr>  
    <td>User Id</td>  
    <td>First Name</td>  
    <td>Last Name</td>  
    <td>Face</td>  
    <td>City</td>  
    <td>Edit</td>  
    <td>Delete</td>  
   </tr>  
   <c:forEach var="user" items="${userList}">  
    <tr>  
     <td>${user.userId}</td>  
     <td>${user.firstName}</td>  
     <td>${user.lastName}</td>  
     <td>${user.face}</td>  
     <td>${user.city}</td>  
     <td><a href="edit?id=${user.userId}">Edit</a></td>  
     <td><a href="delete?id=${user.userId}">Delete</a></td>  
    </tr>  
   </c:forEach>  
   <tr><td><a href="register">Add New User</a></td></tr>  
  </table>  
   </div> 
    </body>
</html>
