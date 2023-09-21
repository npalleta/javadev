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
	  <h3>Listagem de Comidas:</h3>

	  <table class="table table-striped">
	    <thead>
	      <tr>
	        <th>Nome</th>
	        <th>Valor</th>
	        <th>C�digo</th>
	        <th>Peso</th>
	        <th>Vegano</th>
	        <th>Ingredientes</th>
	        <th></th>
	      </tr>
	    </thead>
	    <tbody>
	   	    
	      <c:forEach var="c" items="${listaComida}">
		      <tr>
		        <td>${c.nome}</td>
		        <td>${c.valor}</td>
		        <td>${c.codigo}</td>
		        <td>${c.peso}</td>
		        <td>${c.vegano}</td>
		        <td>${c.ingredientes}</td>
		        <td><a href="/comida/${c.codigo}/excluir">excluir</a> </td>
		      </tr>
	      </c:forEach>
	    </tbody>
	  </table>
	  
	</div>
</body>
</html>