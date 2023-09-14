<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	  <div class="container-fluid">
	    <a class="navbar-brand" href="/">AppPedido</a>
	    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
	      <span class="navbar-toggler-icon"></span>
	    </button>
	    <div class="collapse navbar-collapse" id="collapsibleNavbar">
	      <ul class="navbar-nav">
	        <li class="nav-item">
	          <a class="nav-link" href="/solicitante/lista">Solicitantes</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="#">Produtos</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="#">Bebidas</a>
	        </li>  
	        <li class="nav-item">
	          <a class="nav-link" href="#">Comidas</a>
	        </li>  
	        <li class="nav-item">
	          <a class="nav-link" href="#">Sobremesas</a>
	        </li>  
	        <li class="nav-item">
	          <a class="nav-link" href="#">Pedidos</a>
	        </li>  
	      </ul>

		    <ul class="nav navbar-nav navbar-right">
		      <li><a href="/usuario/cadastro"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
		      <li><a href="/login"><span class="glyphicon glyphicon-log-in"></span> Login ${username.email}</a></li>
		    </ul>
	      
	    </div>
	  </div>
	</nav>