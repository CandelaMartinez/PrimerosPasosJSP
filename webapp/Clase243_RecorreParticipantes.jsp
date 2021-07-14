<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!--     importo libreria jsp y paquetes necesarios -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page
	import="java.util.*, java.sql.*,pildorasinformaticas.com.jsptags.Clase243_Participante"%>

<!--     scriplets -->

<%
ArrayList<Clase243_Participante> datos = new ArrayList<>();

//para que encuentre el driver
//Class.forName("com.mysql.jdbc.Driver");

//conectar con la bbdd

try {

	Connection miConexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/maraton", "root", "");

	Statement mst = miConexion.createStatement();

	//leo datos de la tabla
	String intSQL = "SELECT * FROM PARTICIPANTES";

	ResultSet rs = mst.executeQuery(intSQL);

	//almaceno en el arraylist todos los participantes
	while (rs.next()) {

		datos.add(new Clase243_Participante(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
		rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getInt(10)));

	}
	rs.close();
	miConexion.close();

} catch (Exception e) {

	out.println("ha habido un error");
}

//que voy a guardar en el objeto sesion
pageContext.setAttribute("losParticipantes", datos);
%>



<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>
.cabecera {
	font-weight: bold;
}
</style>
</head>
<body>

	<table border="1">

		<tr class="cabecera">
		
			<td>Nombre</td>


			<td>Apellido</td>

			<td>Dorsal</td>

			<td>Poblacion</td>
			
			<td>Dorsal Diferencial</td>
			
		</tr>

		<c:forEach var="p" items="${losParticipantes }">

			<tr>

				<td>${p.nombre}</td>
				<td>${p.apellidos}</td>
				<td>${p.dorsal}</td>
				<td>${p.poblacion}</td>
				
<%-- 				<td><c:if test="${p.dorsal<=10}">primeros inscriptos </c:if></td> --%>
				
				
				<td> <c:choose>
				
				<c:when test="${p.dorsal<=10}">
				PRIMEROS INSCRIPTOS
				</c:when>
				
				<c:when test="${p.dorsal>10 && p.dorsal<=20}">
				SEGUNDOS INSCRIPTOS
				</c:when>
				
				<c:when test="${p.dorsal>20 && p.dorsal<=30}">
				TERCEROS INSCRIPTOS
				</c:when>
				
				<c:otherwise>
				ULTIMOS INSCRIPTOS
				</c:otherwise>
				
				</c:choose></td>
				
				

			</tr>

		</c:forEach>

	</table>

</body>
</html>