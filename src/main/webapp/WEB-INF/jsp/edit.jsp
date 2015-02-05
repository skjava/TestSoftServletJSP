<%-- 
    Document   : edit
    Created on : 21.01.2014, 19:56:35
    Author     : recber
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<c:url value="/resources/blueprint/ie.css" />" rel="stylesheet">
        <link href="<c:url value="/resources/blueprint/print.css" />" rel="stylesheet">
        <link href="<c:url value="/resources/blueprint/screen.css" />" rel="stylesheet">
        <title>Edit User Details</title>
    </head>
    <body>
 <center>  
<b>Edit User Details </b>  
 
   <div class="container">  
   <form:form method="post" action="update" modelAttribute="user">  
    <table>  
     <tr>  
      <td>First Name :</td>  
      <td><form:input path="firstName"  
        value="${map.user.firstName}" />  
      </td>  
     </tr>  
     <tr>  
      <td>Last Name :</td>  
      <td><form:input path="lastName" value="${map.user.lastName}" />  
      </td>  
     </tr>  
     <tr>  
      <td>Face :</td>  
      <td><spring:bind path="face">  
        <c:forEach items='${map.faceList}' var='faceName'>  
         <c:choose>  
          <c:when test="${faceName eq map.user.face}">  
           <input type="radio" name="face" value="${faceName}"  
            checked="checked">${faceName}  
          </c:when>  
          <c:otherwise>  
           <input type="radio" name="face" value="${faceName}">${faceName}  
          </c:otherwise>  
         </c:choose>  
        </c:forEach>  
       </spring:bind>  
      </td>  
     </tr>  
     <tr>  
  
      <td>City :</td>  
      <td><spring:bind path="city">  
        <select name="city">  
         <c:forEach items='${map.cityList}' var='cityName'>  
          <c:choose>  
           <c:when test="${cityName eq map.user.city}">  
           <option value="${cityName}" selected="">${cityName}</option>  
           </c:when>  
           <c:otherwise>  
            <option value="${cityName}">${cityName}</option>  
           </c:otherwise>  
          </c:choose>  
         </c:forEach>  
        </select>  
       </spring:bind></td>  
     </tr>  
     <tr>  
      <td> </td>  
      <td><input type="submit" value="Save" />  
      </td>  
     </tr>  
    </table>  
    <form:hidden path="userId" value="${map.user.userId}" />  
  
   </form:form>  
  </div>  
 </center> 
    </body>
</html>
