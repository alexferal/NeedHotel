<%--
  Created by IntelliJ IDEA.
  User: Alex
  Date: 04/06/2019
  Time: 23:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib
        prefix="c"
        uri="http://java.sun.com/jsp/jstl/core"
%>
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
            <c:if test="${etapaFormUser eq '1'}">
                <h6>Dados Pessoais</h6>
                <form class="center" action="cadastrar" method="post">
                    <div class="row container">
                            <%--          Input nome            --%>
                        <div class="input-field col s12">
                            <i class="material-icons prefix">account_circle</i>
                            <input required id="primeiroNome" type="text" class="validate inputs words" name="primeiroNome">
                            <label for="primeiroNome">Nome</label>
                        </div>

                            <%--          Input sobrenome            --%>
                        <div class="input-field col s12">
                            <i class="material-icons prefix">account_circle</i>
                            <input required id="sobrenome" type="text" class="validate inputs words" name="sobrenome" >
                            <label for="sobrenome">Sobrenome</label>
                        </div>
                            <%--          Input cpf            --%>
                        <div class="input-field col s12">
                            <i class="material-icons prefix">perm_identity</i>
                            <input required id="cpf" type="text" class="validate inputs" name="cpf">
                            <label for="cpf">Cpf</label>
                        </div>
                            <%--          Input telefone            --%>
                        <div class="input-field col s12">
                            <i class="material-icons prefix">local_phone</i>
                            <input required id="telefone" type="text" class="validate inputs" name="telefone">
                            <label for="telefone">Telefone</label>
                        </div>
                            <%--          Input nascimento            --%>
                        <div class="input-field col s12">
                            <i class="material-icons prefix">date_range</i>
                            <input required type="text" class="datepicker inputs" placeholder="Data de Nascimento" name="nascimento">
                        </div>
                    </div>
                    <div class="modal-footer container center">
                        <a href="login.jsp" class="modal-close waves-effect waves-green btn-flat">Cancelar</a>
                        <button class="btn waves-effect waves-light" type="submit" name="action" id="btnCadastrar">Próximo</button>
                    </div>
                </form>
            </c:if>
            <c:if test="${etapaFormUser eq '2'}">
                <h6>Conta</h6>
                <form class="center" action="cadastrar" method="post" enctype="multipart/form-data">
                    <div class="row container">
                        <div class="file-field input-field col s12">
                            <div class="btn">
                                <span><i class="material-icons">add_photo</i> </span>
                                <input required type="file" name="foto" id="foto" accept="image/*">
                            </div>
                            <div class="file-path-wrapper">
                                <input required class="file-path validate" type="text" placeholder="Faça o upload das fotos do imóvel aqui">
                            </div>
                        </div>
                        <div class="input-field col s12">
                            <i class="material-icons prefix">email</i>
                            <input required id="email" type="email" class="validate inputs" name="email">
                            <label for="email">Email</label>
                        </div>

                        <div class="input-field col s12">
                            <i class="material-icons prefix">lock</i>
                            <input required id="senha" type="password" class="validate inputs" name="senha" >
                            <label for="senha">Senha</label>
                        </div>
                        <div class="input-field col s12">
                            <i class="material-icons prefix">lock</i>
                            <input required id="ConSenha" type="password" class="validate inputs">
                            <label for="ConSenha">Confirmar senha</label>
                        </div>
                    </div>
                    <div class="modal-footer center">
                        <a href="#!" class="modal-close waves-effect waves-green btn-flat">Cancelar</a>
                        <button class="btn waves-effect waves-light" type="submit" name="action">Cadastrar</button>
                    </div>

                </form>
            </c:if>
        </div>
    </div>


    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="js/materialize.min.js"></script>
    <script src="js/login.js"></script>
    <script src="js/jquery.mask.min.js"></script>
    <script src="js/validacao.js"></script>
</body>
</html>
