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
	
	<div class="container-fluid mt-3">
	  <h3>Listagem de Sobremesas:</h3>

	  <table class="table table-striped">
	    <thead>
	      <tr>
	        <th>Nome</th>
	        <th>Valor</th>
	        <th>C�digo</th>
	        <th>Quantidade</th>
	        <th>Doce</th>
	        <th>Informa��o</th>
	        <th></th>
	      </tr>
	    </thead>
	    <tbody>
	   	    
	      <c:forEach var="s" items="${listaSobremesa}">
		      <tr>
		        <td>${s.nome}</td>
		        <td>${s.valor}</td>
		        <td>${s.codigo}</td>
		        <td>${s.quantidade}</td>
		        <td>${s.doce}</td>
		        <td>${s.informacao}</td>
		        <td><a href="/sobremesa/${s.codigo}/excluir">excluir</a> </td>
		      </tr>
	      </c:forEach>
	    </tbody>
	  </table>
	  
	</div>
</body>
</html>