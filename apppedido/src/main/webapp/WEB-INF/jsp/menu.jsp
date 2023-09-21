<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="/sobre">AppPedido</a>
    </div>
    
    <ul class="nav navbar-nav">
      <li class="active"><a href="/">Home</a></li>
      <c:if test="${not empty user}">
	      <li><a href="/usuario/lista">Usu�rios</a></li>
	      <li><a href="/solicitante/lista">Solicitantes</a></li>
	      <li><a href="/produto/lista">Produtos</a></li>
	      <li><a href="/bebida/lista">Bebidas</a></li>
	      <li><a href="/comida/lista">Comidas</a></li>
	      <li><a href="/sobremesa/lista">Sobremesas</a></li>
	      <li><a href="/pedido/lista">Pedidos</a></li>
      </c:if>
    </ul>
    
    <ul class="nav navbar-nav navbar-right">
      <c:if test="${empty user}">
        <li><a href="/usuario/cadastro"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="/login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
	  </c:if>
	  
      <c:if test="${not empty user}">
      	 <li><a href="/logout"><span class="glyphicon glyphicon-log-out"></span> Logout ${user.email}</a></li>
	  </c:if>
    </ul>
  </div>
</nav>
