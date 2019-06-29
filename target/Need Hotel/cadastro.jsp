<%--
  Created by IntelliJ IDEA.
  User: Alex
  Date: 04/06/2019
  Time: 23:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link type="text/css" rel="stylesheet" href="css/materialize.min.css"/>
    <link type="text/css" rel="stylesheet" href="css/login.css"/>
    <link type="text/css" rel="stylesheet" href="css/cadastro.css"/>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <meta charset="UTF-8"/>
    <title>Cadastro</title>
</head>
<body class="blue-grey darken-1">
    <div >
        <div id="divCadastro" class="container white" >
            <h4>Cadastro</h4>
            <% if(session.getAttribute("firstRegister") == null){%>

                <h6>Dados Pessoais</h6>
                <form class="center" action="cadastrar" method="post">
                    <div class="row container">
                        <div class="input-field col s12">
                            <i class="material-icons prefix">account_circle</i>
                            <input id="primeiroNome" type="text" class="validate inputs" name="primeiroNome">
                            <label for="primeiroNome">Nome</label>
                        </div>
                        <div class="input-field col s12">
                            <i class="material-icons prefix">account_circle</i>
                            <input id="sobrenome" type="text" class="validate inputs" name="sobrenome" >
                            <label for="sobrenome">Sobrenome</label>
                        </div>
                        <div class="input-field col s12">
                            <i class="material-icons prefix">perm_identity</i>
                            <input id="cpf" type="text" class="validate inputs" name="cpf">
                            <label for="cpf">Cpf</label>
                        </div>
                        <div class="input-field col s12">
                            <i class="material-icons prefix">local_phone</i>
                            <input id="telefone" type="text" class="validate inputs" name="telefone">
                            <label for="telefone">Telefone</label>
                        </div>
                        <div class="input-field col s12">
                            <i class="material-icons prefix">date_range</i>
                            <input type="text" class="datepicker inputs" placeholder="Data de Nascimento" name="nascimento">
                        </div>
                    </div>
                    <div class="modal-footer container center">
                        <a href="login.jsp" class="modal-close waves-effect waves-green btn-flat">Cancelar</a>
                        <button class="btn waves-effect waves-light" type="submit" name="action" id="btnCadastrar">Próximo</button>
                    </div>
                </form>
            <%} else {%>
                <h6>Conta</h6>
                <form class="center" action="cadastrar" method="post">
                    <div class="row container">
                        <div class="input-field col s12">
                            <i class="material-icons prefix">email</i>
                            <input id="email" type="email" class="validate inputs" name="email">
                            <label for="email">Email</label>
                        </div>

                        <div class="input-field col s12">
                            <i class="material-icons prefix">lock</i>
                            <input id="senha" type="password" class="validate inputs" name="senha" >
                            <label for="senha">Senha</label>
                        </div>
                        <div class="input-field col s12">
                            <i class="material-icons prefix">lock</i>
                            <input id="ConSenha" type="password" class="validate inputs">
                            <label for="ConSenha">Confirmar senha</label>
                        </div>
                    </div>
                    <div class="modal-footer center">
                        <a href="#!" class="modal-close waves-effect waves-green btn-flat">Cancelar</a>
                        <button class="btn waves-effect waves-light" type="submit" name="action">Cadastrar</button>
                    </div>

                </form>
            <%}%>
        </div>
    </div>


    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="js/materialize.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
    <script src="js/login.js"></script>
</body>
</html>
