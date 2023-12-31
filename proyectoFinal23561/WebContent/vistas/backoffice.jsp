<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@page import="misClases.Ticket"%>
<%@page import="misClases.TicketDAO"%>
<%@page import="misClases.Orador"%>
<%@page import="misClases.OradorDAO"%>
<%@page import="java.util.List"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
	<script src="https://kit.fontawesome.com/2cbbc87d30.js" crossorigin="anonymous"></script>
	<title>Backoffice</title>
</head>
<body>
	<div class="backoffice-bg">
		<div class="container">
		    <div class="row">
				<div class="col-md-6 offset-md-3">
			        <div class="card backoffice-card my-5">	   
			        	<div class="card-body text-center my-5"> 
			        		<img src="img/codoacodo.png" alt="Logo Codo a codo" height="60" class="d-inline-block align-middle backoffice-img" loading="lazy">
			        		 <h2 class="text-center text-dark my-4">Panel de Control</h2>        	
						     <a class="btn btn-warning" href="FrontController?accion=panelTickets">Panel de tickets</a>
				          	 <a class="btn btn-info" href="FrontController?accion=panelOradores">Panel de Oradores</a>
						 </div>
			        </div>
		        </div>
		    </div>
		    <div class="row">
		    	<div class="col-md-6 offset-md-3 text-center">
		    		<a class="link-dark backoffice-a" href="FrontController?accion=volver"><i class="fa-solid fa-arrow-left" style="color: #212529;"></i> Volver al sitio web</a>
		    	</div>
		    </div>
	  	</div>
	</div>
	 <!-- scripts -->
    <script src="js/app.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>