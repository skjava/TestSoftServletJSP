<%-- 
    Document   : register.jsp
    Created on : 20.01.2014, 21:46:19
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
        <title>Registration Form</title>
    </head>
    <body>
<center>  
 <b>Registration Form </b>   
   <div class="container"> 
   <form:form method="post" action="insert" modelAttribute="user">  
    <table>  
     <tr>  
      <td>First Name :</td>  
      <td><form:input path="firstName" /></td>  
     </tr>  
     <tr>  
      <td>Last Name :</td>  
      <td><form:input path="lastName" /></td>  
     </tr>  
     <tr>  
      <td>Face :</td>  
      <td><form:radiobuttons path="face"  
        items="${map.faceList}" /></td>  
     </tr>  
     <tr>  
      <td>City :</td>  
      <td><form:select path="city" items="${map.cityList}" /></td>  
     </tr>  
     <tr>  
      <td> </td>  
      <td><input type="submit" value="Save" /></td>  
     </tr>  
     <tr>  
        
      <td colspan="2"><a href="getList">Click Here to See User List</a></td>  
     </tr>  
    </table>  
   </form:form>  
  </div>  
 </center> 
    </body>
</html>
