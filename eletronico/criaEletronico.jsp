<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>Adicionar Eletronico</title>
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
        
        <form action="enviaCriaEletronico.jsp" method="post">
            <div class="row" style="padding:20px">
              <div class="input-field col s3">
              <input type="hidden" name="id">
                <input id="nome" type="text" class="validate" name="nome">
                <label for="nome">Nome</label>
              </div>
              <div class="input-field col s3">
                <input id="descricao" type="text" class="validate" name="descricao" width="200px">
                <label for="descricao">Descricao</label>
              </div>
              <div class="input-field col s3">
                <input id="valor" type="number" class="validate" name="valor" width="200px">
                <label for="valor">Valor</label>
              </div>
              <div class="input-field col s3">
                <input id="ano" type="text" class="validate" name="ano" width="200px">
                <label for="ano">Ano Lancamento</label>
              </div>
            </div>
                
            <div class="row" style="padding:20px">
              <div class="input-field col s3">
                <input id="quantidade" type="number" class="validate" name="quantidade">
                <label for="quantidade">Quantidade</label>
              </div>
              <div class="input-field col s3">
                <input id="ativo" type="text" class="validate" name="ativo" width="200px">
                <label for="ativo">Ativo</label>
              </div>
              <div class="input-field col s3">
                <input id="marca" type="text" class="validate" name="marca" width="200px">
                <label for="marca">Marca</label>
              </div>
              <div class="input-field col s3">
                <input id="modelo" type="text" class="validate" name="modelo" width="200px">
                <label for="modelo">Modelo</label>
              </div>
            </div>
            <input class="waves-effect waves-light btn" type="submit" name="Salvar" value="Salvar">
            <a class="waves-effect waves-light btn" style="float: right" href="../acesso/menu.jsp">Voltar</a>
        </form>
    </div>
    </body>
</html>
