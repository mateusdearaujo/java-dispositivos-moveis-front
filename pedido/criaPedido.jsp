<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="revisaodm2021n.dados.Cliente"%>
<%@page import="revisaodm2021n.controles.ControleCliente"%>
<%@page import="revisaodm2021n.dados.Eletronico"%>
<%@page import="revisaodm2021n.controles.ControleEletronico"%>
<%@page import="java.util.List"%>

<%       
    ControleCliente contCli = new ControleCliente();
    List<Cliente> data = contCli.getAll();
    ControleEletronico contEle = new ControleEletronico();
    List<Eletronico> dataEle = contEle.getAll();
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>Adicionar Pedido</title>
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
        
        select {
            display: block !important;
        }
    </style>
    <body>
    <div class="container" style="background:white"/>   
        <h5 style="text-align: center">Novo Pedido</h5>
        
        <form action="enviaCriaPedido.jsp" method="post" id="form">
            <div class="row" style="padding:20px">
              <div class="input-field col s3">
                <select id="eletronicoSelect">
                <option value="" disabled selected>Escolha um Eletronico</option>  
                
                <%
                for(Eletronico eletronico : dataEle)
                {
                    out.println("<option value='" + eletronico.getId() + "'>" + eletronico.getNome() + "</option>");         
                }
                %>
                </select>
              </div>
              <div class="input-field col s3">
                <select id="clienteSelect">
                    <option value="" disabled selected>Escolha um Cliente</option>
                  
                    <%
                    for(Cliente cliente : data)
                    {
                        out.println("<option value='" + cliente.getId() + "'>" + cliente.getNome() + "</option>");         
                    }
                    %>
                </select>

              </div>
              <div class="input-field col s3">
                  <input id="eletronicoInput" type="hidden" class="validate" name="eletronico" width="200px">
                  <input id="clienteInput" type="hidden" class="validate" name="cliente" width="200px">
                <input id="data" type="text" class="validate" name="data" width="200px">
                <label for="data">Data do Pedido</label>
              </div>
            </div>              
                
                <input class="waves-effect waves-light btn" type="submit" name="Salvar" value="Salvar" id="submitBtn">
            <a class="waves-effect waves-light btn" style="float: right" href="../acesso/menu.jsp">Voltar</a>
        </form>
    </div>
    <script>
        document.getElementById("submitBtn").addEventListener("click", function(event){
            event.preventDefault();
                      
            var clienteSelectValue = document.getElementById("clienteSelect").value;
            document.getElementById("clienteInput").value = clienteSelectValue;
            
            var eletronicoSelectValue = document.getElementById("eletronicoSelect").value;
            document.getElementById("eletronicoInput").value = eletronicoSelectValue;
            
            document.getElementById("form").submit();
        });
    </script>
    </body>
</html>
