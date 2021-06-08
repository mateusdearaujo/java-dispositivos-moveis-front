<%-- 
    Document   : login
    Created on : 09/04/2021, 20:09:22
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>Login</title>
    <style>
        html,
        body {
            height: 100%;
        }
        html {
            display: table;
            margin: auto;
        }
        body {
            display: table-cell;
            vertical-align: middle;
            background: #4ECDC4;
        }

        #login-page {
           width: 500px;
        }
    </style>
    <body>
        <div id="login-page" class="row">
            <div class="col s12 z-depth-6 card-panel">
              <form class="login-form" name="LOGIN" action="menu.jsp" method="post">
                    <div class="row">
                    </div>
                    <div class="row">
                      <div class="input-field col s12">
                        <i class="material-icons prefix">person</i>
                        <input class="validate" id="login" type="text" name="LOGIN" value="">
                        <label for="login" data-error="wrong" data-success="right">Login</label>
                      </div>
                    </div>
                    <div class="row">
                      <div class="input-field col s12">
                        <i class="material-icons prefix">lock_outline</i>
                        <input id="password" type="password" name="SENHA" value="">
                        <label for="password">Password</label>
                      </div>
                    </div>
                    <div class="row">
                      <div class="input-field col s12">
                          <button type="submit" class="btn waves-effect waves-light col s12">Login</button>
                      </div>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>
