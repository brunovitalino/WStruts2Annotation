<!-- Como sera usada a JSTL 1.2, entao adicionamos "/jsp" na URI e tambem o JAR indexador
	no nosso diretorio lib -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>Insert title here</title>
</head>
<body>
	<div>
		<h2>Listando Artigos com struts2</h2>
		<table>
			<tr>
				<th>Nome</th>
				<th>Preço</th>
			</tr>
			<c:forEach var="artigo" items="${artigos}">
				<tr>
					<td>${artigo.nome}</td>
					<td>${artigo.preco}</td>
				</tr>
			</c:forEach>
		</table>
        <br />
        <h5><a href="novo">Novo artigo</a></h5>
	</div>
	<hr />
	<div>
		<jsp:useBean id="dao" class="com.bv.model.ArtigoDao" />
		<h2>Listando Artigos com jstl</h2>
		<table>
			<tr>
				<th>Nome</th>
				<th>Preço</th>
			</tr>
			<c:forEach var="artigoJstl" items="${dao.listar()}">
				<tr>
					<td>${artigoJstl.nome}</td>
					<td>${artigoJstl.preco}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>