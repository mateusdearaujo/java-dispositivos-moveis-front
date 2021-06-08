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
    <title>Menu</title>
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
            <h2 style="text-align: center">MENU</h1>
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

        <h3>Eletronicos</h3>
        
        <label for="filterIndex">Filtrar</label>
        <input id="filterIndex" onkeyup="myFunction()" type="text" class="validate">
        
        <table class="highlight" style="margin-bottom: 20px" id="gridIndex">
        <thead>
          <tr>
              <th>Id</th>
              <th>Nome</th>
              <th>Descricao</th>
              <th>Valor</th>
              <th>Lancamento</th>
              <th>Quantidade</th>
              <th>Ativo</th>
              <th>Marca</th>
              <th>Modelo</th>
              <th>Acoes</th>
          </tr>
        </thead>

        <tbody>
   
                    <%
        for(Eletronico eletronico : data)
        {
            out.println("<tr>");
            
            out.println("<td>" + eletronico.getId() + "</td>");   
            out.println("<td>" + eletronico.getNome() + "</td>");         
            out.println("<td>" + eletronico.getDescricao() + "</td>");         
            out.println("<td>" + eletronico.getValor() + "</td>");
            out.println("<td>" + eletronico.getAno_de_lancamento() + "</td>");
            out.println("<td>" + eletronico.getQuantidade() + "</td>");
            out.println("<td>" + eletronico.getAtivo() + "</td>");
            out.println("<td>" + eletronico.getMarca() + "</td>");
            out.println("<td>" + eletronico.getModelo() + "</td>");
            out.println("<td><a style='color: #26a69a' href='../eletronico/editaEletronico.jsp?ID="+ eletronico.getId() + "'><i class='tiny material-icons'>edit</i></a><a style='color: #26a69a' href='../eletronico/excluiEletronico.jsp?ID="+ eletronico.getId() + "'><i class='tiny material-icons' style='margin-left:15px'>delete</a></i></td>");
                    
            out.println("</tr>");
        }
        %>
            
        </tbody>
      </table>
       
    <a class="waves-effect waves-light btn" href="../eletronico/criaEletronico.jsp">Novo</a>
        
        <% } else { %>
            Usuário Inválido
        <% } %>
    </div>
    
    <script>
function myFunction() {
  let input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("filterIndex");
  filter = input.value.toUpperCase();
  table = document.getElementById("gridIndex");
  tr = table.getElementsByTagName("tr");

  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[1];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }
  }
}
</script>
    </body>
</html>
