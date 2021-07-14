<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!--importo las librerias jsp-->

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
//ejemplo donde alumnos es el resultado de una consulta select a una bbdd
String alumnos[] = { "toni", "sandra", "maria", "jose" };

//construyo lo que quiero almacenar en la sesion
pageContext.setAttribute("losAlumnos", alumnos);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<!-- jsp tags: bucle-->
	<!-- var=creo la variable, items es el objeto que quiero recorrer -->
	
	<c:forEach var="tempAlumnos" items="${losAlumnos}">
	
		${tempAlumnos}<br>


	</c:forEach>


</body>
</html>