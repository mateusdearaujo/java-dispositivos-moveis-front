<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="revisaodm2021n.dados.Pedido"%>
<%@page import="revisaodm2021n.controles.ControlePedido"%>

<%
    int eletronico = Integer.parseInt(request.getParameter("eletronico"));   
    int cliente = Integer.parseInt(request.getParameter("cliente"));                                        
    String data = request.getParameter("data");
       
    Pedido pedido = new Pedido(eletronico, cliente, data);
    ControlePedido contPed = new ControlePedido();
    contPed.inserir(pedido);
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
