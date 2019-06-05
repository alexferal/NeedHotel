<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <link type="text/css" rel="stylesheet" href="css/materialize.min.css"/>
        <link type="text/css" rel="stylesheet" href="css/login.css"/>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <meta charset="UTF-8"/>
    </head>
    <body  class="blue lighten-4">
        <main>
            <div class="container">
                <div class="row center">
                    <div class="card white">
                        <form action="login" method="post">
                            <div class="card-content black-text">
                                <span class="card-title" id="loginTitle">Login</span>
                                <div class="input-field col s12">
                                    <i class="material-icons prefix">email</i>
                                    <input id="lognome" type="email" class="validate" name="logEmail">
                                    <label for="email">Email</label>
                                </div>
                                <div class="input-field col s12">
                                    <i class="material-icons prefix">lock</i>
                                    <input id="logsenha" type="password" class="validate" name="logSenha" >
                                    <label for="senha">Senha</label>
                                </div>
                                <button id="entrar" type="submited" name="action" class="btn waves-effect waves-teal btn-flat blue lighten-4">Entrar</button>
                            </div>
                        </form>
                        <label class="black-text center">Ainda não é cadastrado? <a href="cadastro.jsp">Entrar</a></label>
                    </div>
                </div>
            </div>
            <div id="modal1" class="modal">
                <div class="modal-content">
                    <div class="row" id="divModal">
                        <h4>Cadastro</h4>
                        <h6>Dados Pessoais</h6>
                        <form class="col s12" action="cadastrar" method="post">
                            <div class="row">
                                <div class="input-field col s6">
                                    <i class="material-icons prefix">account_circle</i>
                                    <input id="primeiroNome" type="text" class="validate inputs" name="primeiroNome">
                                    <label for="primeiroNome">Nome</label>
                                </div>
                                <div class="input-field col s6">
                                    <input id="sobrenome" type="text" class="validate inputs" name="sobrenome" >
                                    <label for="sobrenome">Sobrenome</label>
                                </div>
                            </div>

                            <div class="row">
                                <div class="input-field col s6">
                                    <i class="material-icons prefix">perm_identity</i>
                                    <input id="cpf" type="text" class="validate inputs" name="cpf">
                                    <label for="cpf">Cpf</label>
                                </div>
                                <div class="input-field col s6">
                                    <i class="material-icons prefix">local_phone</i>
                                    <input id="telefone" type="text" class="validate inputs" name="telefone">
                                    <label for="telefone">Telefone</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="input-field col s6">
                                    <i class="material-icons prefix">date_range</i>
                                    <input type="text" class="datepicker inputs" placeholder="Data de Nascimento" name="nascimento">
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button class="modal-trigger btn waves-effect waves-light" type="submit" name="action" id="btnCadastrar">Próximo</button>
                            </div>
                        </form>
                    </div>
                </div>

            </div>
            <div id="modal2" class="modal">
                <div class="modal-content">
                    <div class="row">
                        <h4>Cadastro</h4>
                        <h6>Conta</h6>
                        <form class="col s12" action="cadastrar" method="post">
                            <div class="row">
                                <div class="input-field col s12">
                                    <i class="material-icons prefix">email</i>
                                    <input id="email" type="email" class="validate inputs" name="email">
                                    <label for="email">Email</label>
                                </div>

                                <div class="input-field col s6">
                                    <i class="material-icons prefix">lock</i>
                                    <input id="senha" type="password" class="validate inputs" name="senha" >
                                    <label for="senha">Senha</label>
                                </div>
                                <div class="input-field col s6">
                                    <i class="material-icons prefix">lock</i>
                                    <input id="ConSenha" type="password" class="validate inputs">
                                    <label for="ConSenha">Confirmar senha</label>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <a href="#!" class="modal-close waves-effect waves-green btn-flat">Cancelar</a>
                                <button class="btn waves-effect waves-light" type="submit" name="action">Cadastrar</button>
                            </div>

                        </form>

                    </div>
                </div>

            </div>
        </main>

        <footer class="page-footer blue-grey darken-1">
            <div class="footer-copyright">
                <div>
                    <label id="CopyRight" class="white-text">© 2019 NeedHotel - Todos os direitos reservados.</label>
                </div>
            </div>
        </footer>



        <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
        <script src="js/materialize.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
        <script src="js/login.js"></script>
    </body>
</html>
