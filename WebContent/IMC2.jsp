<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>IMC2 (JSP e expression language)</title>
	</head>
	<body>
	
		<%
			double peso = Double.parseDouble(request.getParameter("peso"));
			double altura = Double.parseDouble(request.getParameter("altura"));
			double IMC = peso / (altura * altura);
		
			String msgIMC = "";
		
			if(IMC < 18.5){
				msgIMC="Abaixo do peso";
			}else if(IMC >= 18.5 && IMC < 24.9){
				msgIMC="Peso normal";
			}else if(IMC >= 25 && IMC< 29.9) {
				msgIMC = "Acima do peso";
			}else if(IMC >= 30 && IMC < 39.9) {
				msgIMC="Obesidade";
			}else if (IMC > 40) {
				msgIMC="Obesidade grave";
			}
		%>
	
		<h1>Calculo de IMC (JSP e expression language)</h1>
		<h2>Seu IMC: <%=String.format("%.2f", IMC)%></h2>
		<h2>Sua classificação: <%=msgIMC%></h2>
	
	</body>
</html>