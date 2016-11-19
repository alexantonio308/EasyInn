<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Página de Login</title>
</head>
<body>
<table>
	<tr><td><a href="bemvindo.jsp">HOME PAGE</a></td></tr>
</table>

	<strong>${erro}</strong>

	<form action="Login.bee" method="POST">
		Login: <input type="text" name="login" /><br> Senha: <input
			type="password" name="senha" /><br> <input type="submit"
			value="ENVIAR">

	</form>

</body>
</html>