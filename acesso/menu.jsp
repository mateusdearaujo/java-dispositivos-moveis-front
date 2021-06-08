<%-- 
    Document   : menu
    Created on : 09/04/2021, 20:09:32
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="revisaodm2021n.dados.Usuario"%>
<%@page import="revisaodm2021n.dados.Eletronico"%>
<%@page import="revisaodm2021n.controles.ControleUsuario"%>
<%@page import="revisaodm2021n.controles.ControleEletronico"%>
<%@page import="java.util.List"%>

<%
    String login = request.getParameter("LOGIN");
    String senha = request.getParameter("SENHA");
    
    if(request.getParameter("LOGIN") != null) {
        session.setAttribute("LOGIN", login);
        session.setAttribute("SENHA", senha);
    }
            
    Usuario uEntrada = new Usuario(String.valueOf(session.getAttribute("LOGIN")),  String.valueOf(session.getAttribute("SENHA")));
    ControleUsuario contUsu = new ControleUsuario();
    Usuario uSaida = contUsu.validar(uEntrada);
    ControleEletronico contEle = new ControleEletronico();
    List<Eletronico> data = contEle.getAll();
%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>Painel Administrativo</title>
        <style>
        html, 
        body {
            height: 100%;
        }
        body {
            background: #4ECDC4;
        }
        .container {
            box-shadow: 0 2px 5px 0 rgb(0 0 0 / 16%), 0 2px 10px 0 rgb(0 0 0 / 12%);
            border-radius: 2px;
            padding: 20px;
        }
        tr {
            border-bottom: 1px solid rgba(0,0,0,0.12);
        }
    </style>
    <body>
    <div class="container" style="background:white"/>   
        <% if(uSaida != null) { %>
            <h2 style="text-align: center">Painel Administrativo</h1>
            <div class="row" style="padding:20px">
              <div class="input-field col s4">
                <i class="material-icons prefix">account_circle</i>
                <input id="icon_prefix" type="text" class="validate" value="<%=uSaida.getLogin()%>" disabled>
                <label for="icon_prefix">Login</label>
              </div>
              <div class="input-field col s4">
                <i class="material-icons prefix">language</i>
                <input id="icon_language" type="tel" class="validate" width="200px" value="<%=uSaida.getStatus()%>" disabled>
                <label for="icon_language">Status</label>
              </div>
              <div class="input-field col s4">
                <i class="material-icons prefix">fingerprint</i>
                <input id="icon_fingerprint" type="tel" class="validate" width="200px" value="<%=uSaida.getTipo()%>" disabled>
                <label for="icon_fingerprint">Perfil</label>
              </div>
            </div>
            
        <a class="waves-effect waves-light btn" href="../eletronico/index.jsp">Eletronicos</a>
        <a class="waves-effect waves-light btn" href="../cliente/index.jsp">Clientes</a>
        <a class="waves-effect waves-light btn" href="../eletronico/criaEletronico.jsp">Pedidos</a>
        
        <% } else { %>
            Usuário Inválido
        <% } %>
    </div>
    </body>
</html>
