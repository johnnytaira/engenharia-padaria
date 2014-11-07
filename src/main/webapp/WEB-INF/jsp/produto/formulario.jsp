<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<tags:header/>
<body>
 	<script type="text/javascript">
		function numbersonly(e){
		var unicode=e.charCode? e.charCode : e.keyCode
		if (unicode!=8 && unicode!=46){ //if the key isn't the backspace key (which we should allow)
		if (unicode<48||unicode>57) //if not a number
			return false //disable key press
		}
	}
</script>
 
 
 	<div id="form_container">
 	<h1>Cadastrar Produtos</h1>
	<form action="cadastra">
	
		<fieldset>

			<label for="nome">Nome: </label>
			<br>
			<input id="nome" type="text" name = "nome"/>
			<br><br>
			<label for="preco">Pre�o (R$):</label>
			<br>
     		<input id="preco" type="text" onkeypress="return numbersonly(event)" name="preco"/>
     		<br><br>
     		<label for="quantidade">Quantidade em estoque: </label>
     		<br>
     		<input  id="quantidade" type="number" min="1" max="1000" name="quantidade"/>
     		<br><br>
     		<label for="descricao">Descri��o: </label>
			<br>
			<textarea id="descricao" name ="descricao"></textarea>
			<br><br>
     		<label for="categoria">Categoria: </label>
     		<br>
     		
     		<select class = "element select medium" id="element_5" name="categoria">
     		<!-- PAES, DOCES, SALGADOS, ALMOCO, JANTA, BOLOS, BEBIDAS, FRIOS, MERCEARIA; -->
     			<option value="PAES">P�es</option>
     			<option value="DOCES">Doces</option>
     			<option value="SALGADOS">Salgados</option>
     			<option value="ALMOCO">Almo�o</option>
     			<option value="JANTA">Janta</option>
     			<option value="BOLOS">Bolos</option>
     			<option value="BEBIDAS">Bebidas</option>
     			<option value="FRIOS">Frios</option>
     			<option value="MERCEARIA">Mercearia</option>
     		</select>
     		<br><br>
     		<button type="submit">Enviar</button>	
		</fieldset>
		
	
	
	</form>
	</div>

</body>
</html>