<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>Adicionar Cliente</title>
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
    </style>
    <body>
    <div class="container" style="background:white"/>   
        <h5 style="text-align: center">Novo Eletronico</h5>
        
        <form action="enviaCriaCliente.jsp" method="post">
            <div class="row" style="padding:20px">
              <div class="input-field col s3">
              <input type="hidden" name="id">
                <input id="nome" type="text" class="validate" name="nome">
                <label for="nome">Nome</label>
              </div>
              <div class="input-field col s3">
                <input id="idade" type="text" class="validate" name="idade" width="200px">
                <label for="idade">Idade</label>
              </div>
            </div>             
            <input class="waves-effect waves-light btn" type="submit" name="Salvar" value="Salvar">
            <a class="waves-effect waves-light btn" style="float: right" href="../acesso/menu.jsp">Voltar</a>
        </form>
    </div>
    </body>
</html>
