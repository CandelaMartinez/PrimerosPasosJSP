<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
	//leyendo datos del formulario
	String ciudad_favorita=request.getParameter("ciudad_favorita");


	//crear la cookie: nombre: valor rescatado del formulario
	Cookie laCookie= new Cookie("agencia_viajes.ciudad_favorita", ciudad_favorita);
	
	//vida de la cookie en segundos: 1 año 
	laCookie.setMaxAge(365*24*60*60);
	
	//enviar la cookie al ordenador del usuario para que se guarde
	response.addCookie(laCookie);
	
	
%>

Gracias por enviar tus preferencias

<a href="Clase240_agencia_viajes.jsp">Ir a la agencia de viajes</a>




</body>
</html>