<%@page import="br.com.alura.gerenciador.servlet.Empresa"%>
<%@page import="java.util.List"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<c:url value="/removeEmpresa?id=" var="removendoEmpresa"></c:url>
<c:url value="/mostraEmpresa?id=" var="alterandoEmpresa"></c:url>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Java Standard TagLib</title>
</head>
<body>

	<c:if test="${not empty empresa}">
		Empresa ${empresa} cadastrada com sucesso!<br/>
	</c:if>

	Lista de empresas:<br />
	
	<ul>
		<c:forEach items="${empresas}" var="empresa">
			
			<li>${empresa.nome} - <fmt:formatDate value="${empresa.dataAbertura}" pattern="dd/MM/yyyy"/> 
				<a href="${alterandoEmpresa}${empresa.id}">Editar</a>
				<a href="${removendoEmpresa}${empresa.id}">Remover</a>
			</li>
		</c:forEach>
	</ul>
</body>
</html>