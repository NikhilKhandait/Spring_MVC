<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
	integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/"
	crossorigin="anonymous">


<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<style type="text/css">
.reg {
	background-image: linear-gradient(to right, #d7d2cc 0%, #304352 100%);
}
</style>

</head>
<body>

<div  style="color: black">
	<c:if test="${not empty sessionScope.user}">
		<h3 align="center">
			Hii,
			
			<c:out value="${sessionScope.user.firstName}"></c:out>
			&ensp;
			
			   <a href="<c:url value="/User"/>" class="btn btn-info" >Add User</a> | <a
				href="<c:url value="/User/search"/>" class="btn btn-warning">User List</a> | <a
				href="<c:url value="/Login?operation=logout"/>"class="btn btn-danger">Logout</a>
		</h3>
	</c:if>
	
	</div>
	<c:if test="${empty sessionScope.user}">
		<h3>Hii, Guest</h3>
	</c:if>
	<hr>
</body>
</html>