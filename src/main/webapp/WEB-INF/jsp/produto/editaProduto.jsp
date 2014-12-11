<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<tags:header/>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div id ="form_container">
	<form action="altera-produto">
		<fieldset>

			<input type="hidden" name = "id" value ="${produto.id }"/>
			<label for="nome">Nome: </label>
			<br>
			<input id="nome" type="text" name = "nome" value="${produto.nome }"/>
			<br><br>
			<label for="preco">Pre�o (R$):</label>
			<br>
     		<input id="preco" type="text" onkeypress="return numbersonly(event)" name="preco"
     		value="${produto.preco }"
     		/>
     		<br><br>
     		<label for="quantidade">Quantidade em estoque: </label>
     		<br>
     		<input  id="quantidade" type="number" min="1" max="1000" name="quantidade"
     		value="${produto.quantidade }"
     		/>
     		<select class = "element select medium" id="element_5" name="medida">
     		<!-- KG, LITRO, UNIDADE, BANDEIJA; -->
     			<option value="KG">Kg.</option>
     			<option value="LITRO">Litro(s)</option>
     			<option value="UNIDADE">Unidade(s)</option>
     			<option value="BANDEIJA">Bandeija(s)</option>
     		</select>
     		
     		<br><br>
     		<label for="descricao">Descri��o: </label>
			<br>
			<textarea id="descricao" name ="descricao">
				${produto.descricao }
			</textarea>
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