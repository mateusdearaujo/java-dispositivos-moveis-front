
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="revisaodm2021n.dados.Pedido"%>
<%@page import="revisaodm2021n.controles.ControleCliente"%>
<%@page import="revisaodm2021n.controles.ControlePedido"%>
<%@page import="revisaodm2021n.controles.ControleEletronico"%>
<%@page import="java.util.List"%>

<%  
    ControleCliente contCli = new ControleCliente();
    ControleEletronico contEle = new ControleEletronico();
    ControlePedido contPed = new ControlePedido();
    List<Pedido> data = contPed.getAll();
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pedidos</title>
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
        <h2 style="text-align: center">Pedidos</h2>
        
        <a class="waves-effect waves-light btn" href="../pedido/criaPedido.jsp">Novo Pedido</a>
        <a class="waves-effect waves-light btn" style="float: right" href="../acesso/menu.jsp">Voltar</a>
        <br/><br/>
        <label for="filterIndex">Filtrar</label>
        <input id="filterIndex" onkeyup="myFunction()" type="text" class="validate">
        
        <table class="highlight" style="margin-bottom: 20px" id="gridIndex">
        <thead>
          <tr>
              <th>Id</th>
              <th>Eletronico</th>
              <th>Cliente</th>
              <th>Data</th>
          </tr>
        </thead>

        <tbody>
   
                    <%
        for(Pedido pedido : data)
        {
            out.println("<tr>");
            
            out.println("<td>" + pedido.getId() + "</td>");   
            out.println("<td>" + contEle.buscarNome(pedido.getEle_id()) + "</td>");         
            out.println("<td>" + contCli.buscarNome(pedido.getCli_id()) + "</td>");         
            out.println("<td>" + pedido.getData() + "</td>");
            out.println("<td><a style='color: #26a69a' href='../pedido/excluiPedido.jsp?ID="+ pedido.getId() + "'><i class='tiny material-icons' style='margin-left:15px'>delete</a></i></td>");
                    
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
