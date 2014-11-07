<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/tabela.css" media="screen" type="text/css" />
<title>Listar Produtos</title>
</head>
<body>


<div class="CSS_Table_Example">
<table>
  <thead>
    <tr>
      <th>Nome</th>
      <th>Descrição</th>
      <th>Preço</th>
    </tr>
  </thead>
  <tbody>
    <c:forEach items="${produtos}" var="produto">
      <tr>
        <td>${produto.nome }</td>
        <td>${produto.descricao }</td>
        <td>${produto.preco }</td>
      </tr>          
    </c:forEach>
  </tbody>
</table>
</div>

</body>
</html>