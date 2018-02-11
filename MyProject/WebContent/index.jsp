<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<c:set var="pagefile" value="${param.page }"/>
	<c:choose>
		<c:when test="${pagefile==null }">
		
			<c:set var="pagefile" value="main"/>

		</c:when>
	</c:choose>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>Off canvas menu</title>
  
  <!--   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css"> -->

  
      <link rel="stylesheet" href="css/style.css">

  
</head>

<body>

  <nav>
  <ul>
    <li>
      <a href="index.jsp"><i class="icon-home"></i></a>
      <h4>Home</h4>
    </li>
    <li>
      <a href="list.ani"><i class="icon-tools"></i></a>
      <h4>Action</h4>
    </li>
    <li>
      <a href="index.jsp?page=sports"><i class="icon-tools"></i></a>
      <h4>Sports</h4>
    </li>
    <li>
      <a href="index.jsp?page=comic"><i class="icon-tools"></i></a>
      <h4>Comic</h4>
    </li>
    <li>
      <i class="icon-tools"></i>
      <h4>detective</h4>
    </li>
  </ul>
</nav>
<div class="container">
<div class="menu-icon"><span></span></div>
<br>
<jsp:include page='${pagefile }.jsp'/>
</div>
   <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
   <script  src="js/index.js"></script>
</body>
</html>