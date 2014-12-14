<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Administrador</title>
	<link rel="stylesheet" href="<c:url value="/css/view2.css" />">
	<!--  <script type="text/javascript" src="/js/view.js"></script>-->
	
</head>

<body>
		<h1>Menu do Administrador</h1>
		
		<h3 style="text-align: center">O que você deseja cadastrar?</h3>
		
		
			<div>
				<a href="formulario-promocao">
		
					<img class="circleimg" src="images/20_percent_off.png" height="100"
						width="100" alt="Promoção"
					/>
				</a>
				
				<p>Cadastrar Promoção</p>
			</div>
			
			<div>
				<a href="formulario">
					<img class="circleimg" src="images/produtos.jpg" height="100" width="100" 
					alt ="Produto"/>
				</a>
				<p>Cadastrar Produto</p>
			</div>
		
			<div>
				<a href="formulario-promocao">
		
					<img class="circleimg" src="images/20_percent_off.png" height="100"
						width="100" alt="Promoção"
					/>
				</a>
				
				<p>Editar Promoção</p>
			</div>
			
			<div>
				<a href="formulario">
					<img class="circleimg" src="images/produtos.jpg" height="100" width="100" 
					 alt ="Produto"/>
				</a>
				
				<p>Editar Produto</p>
			</div>
		

	
	

</body>
</html>