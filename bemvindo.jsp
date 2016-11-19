<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link href="EasyInn/WebContent/resources/css/estilo.css" type="text/css" rel="stylesheet"/>
	<style type="text/css">
	    body{
        background-image: url(resources/images/terrace.png);
        background-repeat: no-repeat;
        background-size: contain;
    }
    .menu_principal
        {
        display: table;
        padding: 0;
        background-color: #0BDDFF;
        width: 100%
    }

    .menu_principal li
        {
        float: left;
        list-style-type: none;
    }
    .menu_principal li>a
        {

        display: block;
        padding: 8px 8px;
        text-decoration: none;
        color: #fff;
        }

    .menu_principal li>a:hover
        {
        background-color: #39C0FF;
        }
    
    #teste2{
        weidth: auto;
        height: auto;
        color: black; 
        font-size: 25px; 
        background-color: red; 
        padding: 3px; 
        border: double 5px orange 
		}
	</style>
	<title>HOME PAGE</title>
</head>
<body>
		<h1>
			<Marquee>BEM VINDO!!!</Marquee>
		</h1>
		<ul class="menu_principal">
			<li><a href="bemvindo.jsp">HOME PAGE</a></li>
			<li><a href="CadUsuario.bee">CADASTRAR</a></li>
			<li><a href="DelUsuario.jsp">DELETAR USUÁRIO</a></li>
			<li><a href="login.jsp">LOGIN</a></li>
		</ul>
</body>
</html>