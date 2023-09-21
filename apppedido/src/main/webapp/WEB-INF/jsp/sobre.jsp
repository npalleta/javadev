<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>AppPedido</title>
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>
	<c:import url="/WEB-INF/jsp/menu.jsp"/>

	<div class="container mt-3">
	  <h2>${projeto.nome} - ${projeto.descricao}</h2>
	  
	  <c:forEach var="c" items="${projeto.classes}">
		  <p>${c.nome}</p>            
		  <table class="table table-striped">
		    <thead>
		      <tr>
		        <th>Campo</th>
		        <th>Tipo</th>
		        <th>Observa��o</th>
		      </tr>
		    </thead>
		    <tbody>
		      <c:forEach var="a" items="${c.atributos}">
			      <tr>
			        <td>${a.nome}</td>
			        <td>${a.tipo}</td>
			        <td>${a.descricao}</td>
			      </tr>
		      </c:forEach>
		    </tbody>
		  </table>	  
	  </c:forEach>
	</div>
</body>
</html>