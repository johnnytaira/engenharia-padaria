<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<tags:header/>
<body>


<div id ="form_container">

<h1>Lista de Promoções</h1>
<table>
  <thead>
    <tr>
      <th>Nome Produto</th>
      <th>Valor Antigo</th>
      <th>Valor Novo</th>
      <th>Validade</th>
    </tr>
  </thead>
  <tbody>
    <c:forEach items="${promocoes}" var="promocao" >
    <c:set var="produto" value="${promocao.produto }"/>
      <tr>
       
        <td>${produto.nome }</td>
        <td>${promocao.valorAntigo }</td>
        <td>${promocao.novoValor }</td>
        <td>${promocao.validoAte }</td>
         <td><a href="editaProduto?id=${produto.id }" >Editar</a></td>
         <td><a href="remove-promocao?id=${promocao.id }" onclick="return confirm('Você realmente deseja remover o produto?')">Remover</a></td>
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