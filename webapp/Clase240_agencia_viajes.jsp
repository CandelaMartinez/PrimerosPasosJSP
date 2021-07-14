<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1 style="text-align: center">Agencia de viajes</h1>
	<%
		//si es la primera vez que entro y no hay cookies por leer, valores por defecto
		String ciudad_favorita="Madrid";
	
		//lee la cookie del ordenador del usuario
		Cookie [] lasCookies= request.getCookies();
		
		//buscar las preferencias, la ciudad favorita
		if(lasCookies!=null){
			
			for (Cookie c:lasCookies){
				
				if("agencia_viajes.ciudad_favorita".equals(c.getName())){
					
					ciudad_favorita=c.getValue();
					
					break;
				}
			}
			
		}
	
	
	
	%>
	
	<h3>Vuelos a  <%=ciudad_favorita %>!!!</h3>
	
	
	<p>lanzar una consulta a la bbdd donde se consulte las ofertas del contenido de la variable ciudad_favorita  </p>
	<p>la bbdd devuelve el resultado de la consulta </p>
	<p>la muestro con formato</p>
	<p>esto es un texto de ejemplo </p>
	<p>esto es un texto de ejemplo </p>
	

	<h3>Hoteles a  <%=ciudad_favorita %>!!!</h3>
	
	
	<p>lanzar una consulta a la bbdd donde se consulte las ofertas del contenido de la variable ciudad_favorita  </p>
	<p>la bbdd devuelve el resultado de la consulta </p>
	<p>la muestro con formato</p>
	<p>esto es un texto de ejemplo </p>
	<p>esto es un texto de ejemplo </p>
	
	<h3>Restaurantes a  <%=ciudad_favorita %>!!!</h3>
	
	<p>lanzar una consulta a la bbdd donde se consulte las ofertas del contenido de la variable ciudad_favorita  </p>
	<p>la bbdd devuelve el resultado de la consulta </p>
	<p>la muestro con formato</p>
	<p>esto es un texto de ejemplo </p>
	<p>esto es un texto de ejemplo </p>
	
	
</body>
</html>