<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
  <body>
     <c:forEach var="i" begin="1" end="10" step="2">
       ${i} <br />
     </c:forEach>
  </body>
</html>

<!-- aqui nada mais � do que um la�o que ir� iterar de 1 at� 10 pulando de 2 em 2 -->