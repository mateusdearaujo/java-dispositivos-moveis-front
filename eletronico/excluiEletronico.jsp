<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="revisaodm2021n.dados.Eletronico"%>
<%@page import="revisaodm2021n.controles.ControleEletronico"%>

<%
    int id = Integer.parseInt(request.getParameter("ID"));
    Eletronico eletronico = new Eletronico(id);
    ControleEletronico contEle = new ControleEletronico();   
    contEle.excluir(eletronico);
    response.sendRedirect("../acesso/menu.jsp");
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
