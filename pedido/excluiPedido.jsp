<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="revisaodm2021n.dados.Pedido"%>
<%@page import="revisaodm2021n.controles.ControlePedido"%>

<%
    int id = Integer.parseInt(request.getParameter("ID"));   
    Pedido pedido = new Pedido(id);   
    ControlePedido contPed = new ControlePedido();   
    contPed.excluir(pedido);
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
