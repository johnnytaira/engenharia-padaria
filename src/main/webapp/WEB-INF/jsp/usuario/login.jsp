<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>

  <meta charset="UTF-8">

  <title>Portal do Administrador</title>

    <link rel="stylesheet" href="css/login-style.css" media="screen" type="text/css" />

</head>

<body>

  <span href="#" class="button" id="toggle-login">Log in</span>

<div id="login">
  <div id="triangle"></div>
  <h1>Portal do Administrador</h1>
  <form>
    <input type="email" placeholder="Email" name="email" />
    <input type="password" placeholder="Password" name="senha" />
    <input type="submit" value="Entrar" />
    
  </form>
</div>

  <script src='http://codepen.io/assets/libs/fullpage/jquery.js'></script>

  <script src="js/login.js"></script>

</body>

</html>