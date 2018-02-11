<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
img{padding: 0px;
margin: 0px;}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/style1.css">
</head>
<body>
<ul class="menu">
<c:forEach var="list" items="${aniList }">
  <li><a href="content.ani?title=${list.title }">${list.title }</a></li>
</c:forEach>
  <!-- <li><a href="onepiece.jsp">원피스<br>
  <input type="hidden" value="onepiece" name="title"></a></li>
  <li><a href="hunter.jsp">헌터x헌터<br>
  <input type="hidden" value="hunter" name="title"></a></li>
  <li><a href="dragonball.jsp">드래곤볼<br>
  <input type="hidden" value="dragonball" name="title"></a></li>
  <li class="slider"></li> -->
</ul>
<c:forEach var="list" items="${aniList }">
<img src="images/${list.title }.jpg" width="24.6%" height="80%">
</c:forEach>
</body>
</html>