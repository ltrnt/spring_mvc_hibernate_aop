<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: ltrnt
  Date: 08.02.2021
  Time: 20:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Info Employees</title>
</head>
<body>

<h2>Info employees</h2>

<%--@elvariable id="employee" type="ru.ltrnt.spring_mvc.entity.Employee"--%>
<form:form action="saveEmployee" modelAttribute="employee">
    
    <form:hidden path="id"/>
    
    Name <form:input path="name"/>
    <br>
    Surname <form:input path="surname"/>
    <br>
    Department <form:input path="department"/>
    <br>
    Salary <form:input path="salary"/>
    <br>
    <input type="submit" value="OK"/>
</form:form>


</body>
</html>
