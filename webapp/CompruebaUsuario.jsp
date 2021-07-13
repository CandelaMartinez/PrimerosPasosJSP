<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.*" %>

<% 


String usuario=request.getParameter("usuario");

String contra=request.getParameter("contra");



Class.forName("com.mysql.jdbc.Driver");

try{

Connection miConexion= DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto_jsp","root","");

PreparedStatement c_preparada= miConexion.prepareStatement("SELECT * FROM USUARIOS WHERE USUARIO=? AND CONTRASEÑA=?");

c_preparada.setString(1, usuario );

c_preparada.setString(2, contra);

ResultSet rs= c_preparada.executeQuery();

if(rs.next()) out.println("Usuario autorizado");
	
else out.println("no hay usuarios con esos datos");

}catch(Exception e){
	
	out.println("ha habido un error");
	e.printStackTrace();
}

%>



</body>
</html>