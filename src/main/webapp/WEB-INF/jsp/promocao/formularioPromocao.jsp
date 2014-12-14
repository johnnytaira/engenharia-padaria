<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<tags:header/>

<body>

<div id="form_container">
	<h1>Cadastro de Promoção</h1>
	

	<form action="cadastra-promocao" method="POST">
	
	<c:set var="nome"/>
		<fieldset>

			<label for="idProduto">Código do Produto: </label>
			<br>
			
				<select id="idProduto">
					<c:forEach items="${produtos}" var="produto">
						<option value="<c:url value="${produto.id }"/>">${produto.id }</option>
						<c:set var="nome" value="${produto}"/>
					</c:forEach>
				</select>
			
			
			<br>
			<label for="nomeProduto">${nome }</label>
			 
			
			<label for="novoValor">Novo Valor: </label>
			<br>
			<input id="novoValor" type="text" name="novoValor"/>
			<br><br>
			<button type="submit">Enviar</button>	
			
		</fieldset>
	</form>
</div>
</body>
</html>