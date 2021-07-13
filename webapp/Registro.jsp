<html>
<body>
<h2> Usuarios registrados</h2>

Usuario confirmado:<br><br>

nombre: <%=request.getParameter("nombre") %> &nbsp; Apellido: <%=request.getParameter("apellido") %>

<br><br>
<jsp:include page="Clase233_Fecha.jsp"></jsp:include>
</body>

</html>