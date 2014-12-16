<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<tags:header/>

<script type="text/javascript">
		function numbersonly(e){
		var unicode=e.charCode? e.charCode : e.keyCode
		if (unicode!=8 && unicode!=46){ //if the key isn't the backspace key (which we should allow)
			if (unicode<48||unicode>57) //if not a number
				return false //disable key press
			}
		}
	</script>


<body>

<div id="form_container">
	<h1>Cadastro de Promoção</h1>
	

	<form action="cadastra-promocao" method="POST">
	
	<c:set var="nome"/>
		<fieldset>

			<label for="idProduto">Nome do Produto: </label>
			<br>
			
				<select id="idProduto" name="idProduto">
					<c:forEach items="${produtos}" var="produto">
						<option value="<c:url value="${produto.id }"/>">${produto.nome }</option>
						
					</c:forEach>
				</select>
			<br>
			<br>
			
			<label for="novoValor">Novo Valor: </label>
			<br>
			<input id="novoValor" type="text" name="novoValor" onkeypress="return numbersonly(event)"/>
			<br>
			<label for="validoAte">Válido até: </label>
			<br>
			<input id="validoAte" type="date" name="validoAte"/>	
			<br>
			<button type="submit">Enviar</button>	
			
		</fieldset>
	</form>
	
</div>
</body>
</html>