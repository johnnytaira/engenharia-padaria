<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<tags:header/>
<body>


<div id ="form_container">

<h1>Lista de Produtos</h1>
<table>
  <thead>
    <tr>
      <th>Id</th>
      <th>Nome</th>
      <th>Descri��o</th>
      <th>Quantidade</th>
      <th>Pre�o</th>
    </tr>
  </thead>
  <tbody>
    <c:forEach items="${produtos}" var="produto">
      <tr>
        <td>${produto.id }</td>
        <td>${produto.nome }</td>
        <td>${produto.descricao }</td>
        <td>${produto.quantidade }</td>
        <td>R$ ${produto.preco }0</td>
         <td><a href="editaProduto?id=${produto.id }" >Editar</a></td>
         <td><a href="removeProduto?id=${produto.id }" onclick="return confirm('Ce tem ctz tio?')">Remover</a></td>
      </tr>          
    </c:forEach>
  </tbody>
</table>
<br><br><br>
<a href="menuAdmistrador">Clique aqui</a> para voltar � p�gina principal
</div>

</body>
</html>