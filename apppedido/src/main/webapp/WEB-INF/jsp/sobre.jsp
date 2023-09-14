<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>AppPedido</title>
  	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<div class="container mt-3">
	  <h2>Classe de Domínio</h2>
	  <p>Pedido</p>            
	  <table class="table table-striped">
	    <thead>
	      <tr>
	        <th>Campo</th>
	        <th>Tipo</th>
	        <th>Observação</th>
	      </tr>
	    </thead>
	    <tbody>
	      <tr>
	        <td>descricao</td>
	        <td>String</td>
	        <td>Detalhamento do pedido</td>
	      </tr>
	      <tr>
	        <td>data</td>
	        <td>LocalDateTime</td>
	        <td>Data de realização do pedido</td>
	      </tr>
	      <tr>
	        <td>web</td>
	        <td>boolean</td>
	        <td>Indicativo se o pedido foi realizado presencialmente ou pela web</td>
	      </tr>
	      <tr>
	        <td>solicitante</td>
	        <td>Solicitante</td>
	        <td>Informações do solicitante que realizou o pedido</td>
	      </tr>
	      <tr>
	        <td>produtos</td>
	        <td>List Produto</td>
	        <td>Listagem de produtos existentes no pedido</td>
	      </tr>
	    </tbody>
	  </table>
	  <p>Solicitante</p>            
	  <table class="table table-striped">
	    <thead>
	      <tr>
	        <th>Campo</th>
	        <th>Tipo</th>
	        <th>Observação</th>
	      </tr>
	    </thead>
	    <tbody>
	      <tr>
	        <td>descricao</td>
	        <td>String</td>
	        <td>Detalhamento do pedido</td>
	      </tr>
	      <tr>
	        <td>data</td>
	        <td>LocalDateTime</td>
	        <td>Data de realização do pedido</td>
	      </tr>
	      <tr>
	        <td>web</td>
	        <td>boolean</td>
	        <td>Indicativo se o pedido foi realizado presencialmente ou pela web</td>
	      </tr>
	    </tbody>
	  </table>
	  <p>Produto</p>            
	  <table class="table table-striped">
	    <thead>
	      <tr>
	        <th>Campo</th>
	        <th>Tipo</th>
	        <th>Observação</th>
	      </tr>
	    </thead>
	    <tbody>
	      <tr>
	        <td>descricao</td>
	        <td>String</td>
	        <td>Detalhamento do pedido</td>
	      </tr>
	      <tr>
	        <td>data</td>
	        <td>LocalDateTime</td>
	        <td>Data de realização do pedido</td>
	      </tr>
	      <tr>
	        <td>web</td>
	        <td>boolean</td>
	        <td>Indicativo se o pedido foi realizado presencialmente ou pela web</td>
	      </tr>
	    </tbody>
	  </table>
	  <p>Bebida</p>            
	  <table class="table table-striped">
	    <thead>
	      <tr>
	        <th>Campo</th>
	        <th>Tipo</th>
	        <th>Observação</th>
	      </tr>
	    </thead>
	    <tbody>
	      <tr>
	        <td>descricao</td>
	        <td>String</td>
	        <td>Detalhamento do pedido</td>
	      </tr>
	      <tr>
	        <td>data</td>
	        <td>LocalDateTime</td>
	        <td>Data de realização do pedido</td>
	      </tr>
	      <tr>
	        <td>web</td>
	        <td>boolean</td>
	        <td>Indicativo se o pedido foi realizado presencialmente ou pela web</td>
	      </tr>
	    </tbody>
	  </table>
	  <p>Comida</p>            
	  <table class="table table-striped">
	    <thead>
	      <tr>
	        <th>Campo</th>
	        <th>Tipo</th>
	        <th>Observação</th>
	      </tr>
	    </thead>
	    <tbody>
	      <tr>
	        <td>descricao</td>
	        <td>String</td>
	        <td>Detalhamento do pedido</td>
	      </tr>
	      <tr>
	        <td>data</td>
	        <td>LocalDateTime</td>
	        <td>Data de realização do pedido</td>
	      </tr>
	      <tr>
	        <td>web</td>
	        <td>boolean</td>
	        <td>Indicativo se o pedido foi realizado presencialmente ou pela web</td>
	      </tr>
	    </tbody>
	  </table>
	  <p>Sobremesa</p>            
	  <table class="table table-striped">
	    <thead>
	      <tr>
	        <th>Campo</th>
	        <th>Tipo</th>
	        <th>Observação</th>
	      </tr>
	    </thead>
	    <tbody>
	      <tr>
	        <td>descricao</td>
	        <td>String</td>
	        <td>Detalhamento do pedido</td>
	      </tr>
	      <tr>
	        <td>data</td>
	        <td>LocalDateTime</td>
	        <td>Data de realização do pedido</td>
	      </tr>
	      <tr>
	        <td>web</td>
	        <td>boolean</td>
	        <td>Indicativo se o pedido foi realizado presencialmente ou pela web</td>
	      </tr>
	    </tbody>
	  </table>
	</div>
</body>
</html>