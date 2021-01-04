<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix = "fmt" %>
<%@ page language="java" contentType="text/html; charsaet=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>IMC3 (JSTL)</title>
	</head>
	<body>
		<h1>Calculo de IMC (JSTL)</h1>
		
		<c:set var="peso" scope="session" value="${param.peso}"></c:set>
		<c:set var="altura" scope="session" value="${param.altura}"></c:set>
		<c:set var="IMC" scope="session" value="${peso/(altura*altura)}"></c:set>

		<h2>Seu IMC: <fmt:formatNumber type="number" maxFractionDigits="2" value="${IMC}"/></h2>
		<h2>Sua classificação: 
			<c:choose>
		         <c:when test="${IMC < 18.5}">
		            Abaixo do peso
		         </c:when>
		         <c:when test="${IMC >= 18.5 && IMC < 24.9}">
		            Peso normal
		         </c:when>
		         <c:when test="${IMC >= 25 && IMC< 29.9}">
		            Acima do peso
		         </c:when>
		         <c:when test="${IMC >= 30 && IMC < 39.9}">
		            Obesidade
		         </c:when>
		         <c:when test="${IMC > 40}">
		            Obesidade grave
		         </c:when>
	      	 </c:choose>
		</h2>
	</body>
</html>