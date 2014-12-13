<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
      <th>Descrição</th>
      <th>Quantidade</th>
      <th>imagem</th>
      <th>Preço</th>
    </tr>
  </thead>
  <tbody>
    <c:forEach items="${produtos}" var="produto" >
      <tr>
        <td>${produto.id }</td>
        <td>${produto.nome }</td>
        <td>${produto.descricao }</td>
        <td>${produto.quantidade }</td>
        <td><img src="<c:url value="${produto.imagem }"/>" ></td>
        <td>${produto.preco }</td>
         <td><a href="editaProduto?id=${produto.id }" >Editar</a></td>
         <td><a href="removeProduto?id=${produto.id }" onclick="return confirm('Você realmente deseja remover o produto?')">Remover</a></td>
      </tr>          
    </c:forEach>
  </tbody>
</table>

<br><br><br>
<a href="menuAdmistrador">Clique aqui</a> para voltar à página principal
</div>


<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
    <script src=<c:url value="/js/jquery.currency.js" />></script>
    <script type="text/javascript">
    $(document).ready(function() {
        $('#basic').currency();
        $('#input').currency();
        $('#advanced').currency({ region: 'BRL', thousands: '', decimal: ',', decimals: 2 });
        $('.multiple').currency();
        $('#convert').currency({ region: 'GBP', convertFrom: 'USD', convertLocation: '../convert.php' });
        $('#invalid').currency();
    });
    </script>

</body>
</html>