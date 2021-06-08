<%-- 
    Document   : index
    Created on : 07/06/2021, 23:52:38
    Author     : Mateu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="revisaodm2021n.dados.Usuario"%>
<%@page import="revisaodm2021n.dados.Eletronico"%>
<%@page import="revisaodm2021n.controles.ControleUsuario"%>
<%@page import="revisaodm2021n.controles.ControleEletronico"%>
<%@page import="java.util.List"%>

<%       
    ControleEletronico contEle = new ControleEletronico();
    List<Eletronico> data = contEle.getAll();
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
    </head>
    <body>
        
        <div class="container" style="background:white">
        <h2 style="text-align: center">Eletronicos</h2>
        
        <a class="waves-effect waves-light btn" href="../eletronico/criaEletronico.jsp">Novo Eletronico</a>
        <a class="waves-effect waves-light btn" style="float: right" href="../acesso/menu.jsp">Voltar</a>
        <br/><br/>
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
