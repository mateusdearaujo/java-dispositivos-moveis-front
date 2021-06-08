<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="revisaodm2021n.dados.Eletronico"%>
<%@page import="revisaodm2021n.controles.ControleEletronico"%>

<%
    int id = Integer.parseInt(request.getParameter("id"));
    String nome = request.getParameter("nome");
    String descricao = request.getParameter("descricao");
    double valor = Double.parseDouble(request.getParameter("valor"));
    String ano = request.getParameter("ano");
    int quantidade = Integer.parseInt(request.getParameter("quantidade"));
    String ativo = request.getParameter("ativo");
    String marca = request.getParameter("marca");
    String modelo = request.getParameter("modelo");                                                   

    Eletronico eletronico = new Eletronico(id, nome, descricao, valor, ano, quantidade, ativo, marca, modelo);
    ControleEletronico contEle = new ControleEletronico();
    contEle.alterar(eletronico);
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
