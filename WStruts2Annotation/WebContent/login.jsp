<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%-- Usando Struts2 Tags em JSP --%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>Página de Login</title>
</head>
<body>
<h3>Bem vindo, digite seu login abaixo</h3>
<s:form action="login" method="POST">
    <s:textfield name="usuario" label="Usuario" />
    <s:password name="senha" label="Senha" />
    <s:submit value="Entrar" />
</s:form>
</body>
</html>