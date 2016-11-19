<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Editar Usuario</title>
</head>
<body>


<strong>${erro}</strong>

<form action="Edit.bee" method="POST">

Novo Nome: <input type="text" name="nnome" value="${usuario.nome }"/><br>
Novo Login: <input type="text" name="nlogin" value="${usuario.login }"/><br>
Nova Senha: <input type="password" name="nsenha"value="${usuario.senha }"/><br>

<input type="submit" value="VAI!">

</form>

</body>
</html>