<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cadastro</title>
</head>
<body>

	<strong>${msg}</strong>
	<div background="terrace.png" color="white">
		<form action="CadUsuario.bee" method="POST">
			Login: <input type="text" name="login" /><br> Senha: <input
				type="password" name="senha" /><br> Nome: <input type="text"
				name="nome" /><br> <input type="submit" value="CADASTRAR">
			<input type="reset" value="RESETAR">
		</form>
	</div>
	<h2>
		<Marquee>Usuários Cadastrados:</Marquee>
	</h2>

	<table border="1">
		<tr><td><a href="bemvindo.jsp">HOME PAGE</a></td></tr>
		<tr>
			<td>Nome</td>
			<td>Login</td>
		</tr>
				<c:forEach items="${usuarios}" var="usuario">
			<tr>
				<td>${usuario.nome}</td>
				<td>${usuario.login}</td>
				<td><a href="DelUsuario.bee?login=${usuario.login}">DEL</a></td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>