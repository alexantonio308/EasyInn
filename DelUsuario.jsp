<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Usuarios Cadastrados / Deletar</title>
</head>
<body>
	<h2>Usuários Cadastrados</h2>
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