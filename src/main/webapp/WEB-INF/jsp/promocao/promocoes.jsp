<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="joda" uri="http://www.joda.org/joda/time/tags" %>
<!DOCTYPE HTML>
<html>
<head>
  <title>Padaria do Julio| Promoções</title>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <link href="css/padariaPrincipal.css" rel="stylesheet" type="text/css"  media="all" />
   <style type="text/css">

  h2 {
    color:#f56857;
    font-size:3em;
	margin-bottom:45px;
	margin-top: 45px;
    font-family: 'Aller_Bd';
    text-align: center;
    }    
  
    p{
    color:#f3a835;
    font-family: 'Aller_Bd';
    text-align: center;
    font-size:1.5em;
    margin-top: 10px;
    }

    figure{
    display: inline-block;
    width: 300px;
    padding-left: 109px;
    padding-bottom: 50px;
  
    }
    h3{
    	text-align: center;
    }

     .bla img{
  	width:267px;
  	height:217px;
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
          	  	  <a href="index.html"><img src="images/logo2.jpg" alt="" /></a>
          	    </div>
          	    	<div class="menu">
					    <ul>
							<li class="active"><a href="index.html">Home</a></li>
							<li><a href="about.html">Quem Somos</a></li>
							<li><a href="menu.html">Produtos</a></li>
							<li><a href="/vraptor-blank-project/promocoes">Promoções</a></li>
							<li><a href="contact.html">Contato</a></li>
							<div class="clear"></div>
						</ul>
					</div>
				    <div class="clear"></div>
				</div>
			</div>
       </div>
		 <!---start-content---->
		  <div class="bla">
		 	<h2>Promoções</h2>
		 	<p>A Padaria do Julio tem incríveis promoções toda semana para você. Confira nossos produtos em promoção:</p>
		 	<div class="items_desc">
	          	<div class="wrap">
	          	
	          		<c:forEach items="${partition}" var="promocoes" >
    				
	             		<div class="section group">
	             
	             			<c:forEach items="${promocoes}" var="promocao">
	             			<c:set var="produto" value="${promocao.produto }"/>
				   				<div class="listview_1_of_2 images_1_of_2">
									<div class="listimg listimg_2_of_1">
						 				<img src="<c:url value="${produto.imagem }"/>" alt="" />
									</div>
				    				<div class="text list_2_of_1">
				    				<joda:format var="date" value="${promocao.validoAte}" pattern="dd/MM/yyyy"/>
				    				
										<h3>${produto.nome }</h3>
										<p>De: R$${promocao.valorAntigo }</p>
										<p>Por: R$${promocao.novoValor }</p>
										<p>Válido até:${date }</p>	
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
			 <p class="company_name">Company Name &copy; 2013 All Rights Reseverd</p> <p class="design">Design by <a href="http://w3layouts.com">W3Layouts</a></p>
			 <div class="clear"></div>
		</div>	
   </div> 
  </body>
</html>