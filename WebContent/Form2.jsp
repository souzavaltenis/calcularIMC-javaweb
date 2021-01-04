<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>IMC2 (JSP e expression language)</title>
	</head>
	<body>
		<h1>Calculo de IMC (JSP e expression language)</h1>
		<form action="IMC2.jsp">
			<p>
				<label>Peso: </label> <input type="text" name="peso" onchange="this.value = this.value.replace(',', '.')"/>
			</p>
			<p>
				<label>Altura: </label> <input type="text" name="altura" onchange="this.value = this.value.replace(',', '.')"/>
			</p>
			<input type="submit" value="Calcular">
		</form>
	</body>
</html>