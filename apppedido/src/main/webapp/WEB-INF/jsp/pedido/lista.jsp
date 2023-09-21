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
	  <h3>Listagem de Pedidos:</h3>

	  <table class="table table-striped">
	    <thead>
	      <tr>
	        <th>Descrição</th>
	        <th>Data</th>
	        <th>Web</th>
	        <th>Solicitante</th>
	        <th>Produtos</th>
	        <th></th>
	      </tr>
	    </thead>
	    <tbody>
	   	    
	      <c:forEach var="p" items="${listaPedido}">
		      <tr>
		        <td>${p.descricao}</td>
		        <td>${p.data}</td>
		        <td>${p.web}</td>
		        <td>${p.solicitante}</td>
		        <td>${p.produtos}</td>
		        <td><a href="/pedido/${p.data}/excluir">excluir</a> </td>
		      </tr>
	      </c:forEach>
	    </tbody>
	  </table>
	  
	</div>
</body>
</html>