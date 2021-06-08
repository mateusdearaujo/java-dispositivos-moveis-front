<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="revisaodm2021n.dados.Cliente"%>
<%@page import="revisaodm2021n.controles.ControleCliente"%>

<%
    int id = Integer.parseInt(request.getParameter("id"));
    String nome = request.getParameter("nome");
    int idade = Integer.parseInt(request.getParameter("idade"));                                              
    Cliente cliente = new Cliente(id, nome, idade);    
    ControleCliente contCli = new ControleCliente();    
    contCli.alterar(cliente);    
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
