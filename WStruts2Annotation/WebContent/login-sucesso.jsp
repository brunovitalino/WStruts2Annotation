<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>Pagina de Boas Vindas</title>
</head>
<body>
	<div>
		<h1>Sistema pra gerenciar artigos de alguma coisa</h1>
		<h2>Bem vindo(a) <s:property value="nome" /></h3>
		<h3>Escolhar uma opção:</h2>
		<p><a href="inicializar">Listar artigos</a></p>
		<p><a href="adicionarArtigos.jsp">Adicionar artigos</a></p>
	</div>
</body>
</html>