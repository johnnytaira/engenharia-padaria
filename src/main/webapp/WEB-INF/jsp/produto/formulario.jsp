<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<tags:header/>
<body>
 
 	<div id="form_container">
 	<h1>Cadastrar Produtos</h1>
	<form action="cadastra-produto" method="POST">
	
		<fieldset>

			<label for="nome">Nome: </label>
			<br>
			<input id="nome" type="text" name = "nome"/>
			<br><br>
			<label for="foto">Foto:</label>
			<br>
			<input id="foto" type="file" name="foto"/>
			<br><br>
			<label for="preco">Preço (R$):</label>
			<br>
     		<input id="preco" type="text" onkeypress="return numbersonly(event)" name="preco"/>
     		<br><br>
     		<label for="quantidade">Quantidade em estoque: </label>
     		<br>
     		<input  id="quantidade" type="number" min="1" max="1000" name="quantidade"/>
     		<select class = "element select medium" id="element_5" name="medida">
     		<!-- KG, LITRO, UNIDADE, BANDEIJA; -->
     			<option value="KG">Kg.</option>
     			<option value="LITRO">Litro(s)</option>
     			<option value="UNIDADE">Unidade(s)</option>
     			<option value="BANDEIJA">Bandeija(s)</option>
     		</select>
     		<br><br>
     		<label for="descricao">Descrição: </label>
			<br>
			<textarea id="descricao" name ="descricao"></textarea>
			<br><br>
     		<label for="categoria">Categoria: </label>
     		<br>
     		<select class = "element select medium" id="element_5" name="categoria">
     		<!-- PAES, LANCHES, SALGADOS, DOCES, BOLOS, CUPCAKES;; -->
     			<option value="PAES">Pães</option>
     			<option value="DOCES">Doces</option>
     			<option value="SALGADOS">Salgados</option>
     			<option value="LANCHES">Lanches</option>
     			<option value="BOLOS">Bolos</option>
     			<option value="CUPCAKES">Cupcakes</option>
     		</select>
     		<br><br>
     		<button type="submit">Enviar</button>	
		</fieldset>
		</form>

	</div>
	
		<script type="text/javascript">
			function numbersonly(e){
			var unicode=e.charCode? e.charCode : e.keyCode
			if (unicode!=8 && unicode!=46){ //if the key isn't the backspace key (which we should allow)
				if (unicode<48||unicode>57) //if not a number
					return false //disable key press
				}
			}
		</script>

</body>
</html>