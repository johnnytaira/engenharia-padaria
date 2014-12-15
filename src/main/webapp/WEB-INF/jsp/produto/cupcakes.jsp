<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Padaria do Julio| Produtos</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="css/padariaPrincipal.css" rel="stylesheet" type="text/css"
	media="all" />
<style type="text/css">
h2 {
	color: #f56857;
	font-size: 3em;
	margin-bottom: 15px;
	margin-top: 15px;
	font-family: 'Aller Bold';
	text-align: center;
}
</style>

</head>
<body>
	<div class="header">
		<div class="header_img">
			<img src="images/header_img.jpg" alt="" />
		</div>
		<div class="header_bottom">
			<div class="wrap">
				<div class="logo">
					<a href="/vraptor-blank-project"><img src="images/logo2.jpg" alt="" /></a>
				</div>
				<div class="menu">
					<ul>
						<li><a href="/vraptor-blank-project">Inicio</a></li>
						<li><a href="about.html">Quem Somos</a></li>
						<li class="active"><a href="menu.html">Produtos</a></li>
						<li><a href="services.html">Serviços</a></li>
						<li><a href="contact.html">Contato</a></li>
						<div class="clear"></div>
					</ul>
				</div>
				<div class="clear"></div>
			</div>
		</div>
	</div>
	<!---start-content-->
	<div class="bla">
		<h2>Cupcakes</h2>
		<div class="items_desc">
			<div class="wrap">

				<c:forEach items="${partition}" var="cupcakes">


					<div class="section group">
						<c:forEach items="${cupcakes}" var="cupcake">
							<div class="listview_1_of_2 images_1_of_2">
								<div class="listimg listimg_2_of_1">
									<a href="#"><img src="<c:url value="${cupcake.imagem }"/>"
										alt="" /><span> R$${cupcake.preco }/kg</span></a>
								</div>
								<div class="text list_2_of_1">
									<h3>${cupcake.nome}</h3>
									<p>${cupcake.descricao }</p>
								</div>
							</div>
						</c:forEach>
					</div>

				</c:forEach>


			</div>
		</div>
	</div>
	<!---End-main---->
	<!---Footer---->
	<div class="copy-right">
		<div class="wrap">

			<div class="clear"></div>
		</div>
	</div>
</body>
</html>