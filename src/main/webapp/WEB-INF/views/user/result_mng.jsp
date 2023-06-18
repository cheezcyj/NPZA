<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Random Numbers</title>
</head>
<body>
  <h1>랜덤한 시퀀스</h1>
  <ul>
    <c:forEach items="${randomNumbers}" var="number">
        <li>${number}</li>
    </c:forEach>
  </ul>
</body>
</html>
