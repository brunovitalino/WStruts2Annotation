<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
    <head>
        <title>Adicionando novo artigo</title>
    </head>
    <body>
        <h3>Novo Artigo</h3>
        <s:form action="adicionar">
        	<s:textfield name="artigo.nome" label="Nome" />
            <s:textfield name="artigo.preco" label="Pre�o" />
            <s:submit value="Adicionar" />
        </s:form>
            <h6>PS: falta implementar a adi��o do que foi digitado</h6>
    </body>
</html>