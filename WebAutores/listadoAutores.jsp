<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="autores.GestionBD"%>
<%@ page import="java.sql.SQLException"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insertar Autor</title>
</head>
<body>

	<%
	String nombreAutor = request.getParameter("nombreAutor");
	String nacionalidad = request.getParameter("nacionalidad");
	String fechaNacimiento = request.getParameter("fechaNacimiento");

	try {
		GestionBD.abrirConexion();
		int filasAfectadas = GestionBD.insertarAutor(nombreAutor, nacionalidad, fechaNacimiento);
		GestionBD.cerrarConexion();
		if (filasAfectadas > 0) {
	%>
	<p style="color: green;">Autor insertado correctamente.</p>
	<%
	} else {
	%>
	<p style="color: red;">No se pudo insertar el autor.</p>
	<%
	}
	} catch (SQLException e) {
	%>
	<p style="color: red;">
		Error al insertar el autor:
		<%=e.getMessage()%></p>
	<%
	}
	%>

	<!-- Botón para volver -->
	<a href="index.html"><button>Volver</button></a>

</body>
</html>
