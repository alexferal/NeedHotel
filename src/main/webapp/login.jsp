<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <link type="text/css" rel="stylesheet" href="css/materialize.min.css"/>
        <link type="text/css" rel="stylesheet" href="css/login.css"/>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <meta charset="UTF-8"/>
    </head>
    <body>
        <main>
            <div class="container">
                <div class="row">
                    <div class="col s5 m6">
                        <div class="card blue-grey darken-1">
                            <div class="card-content white-text">
                                <span class="card-title" id="loginTitle">Login</span>
                                <input placeholder="Email" id="lognome" type="email" class="validate" name="logEmail">
                                <input placeholder="Senha" id="logsenha" type="password" class="validate" name="logSenha">
                            </div>
                            <div class="card-action">
                                <a href="#" id="entrar">Entrar</a>
                            </div>
                            <label class="white-text col s6 offset-s7">Ainda não é cadastrado? <a href="#modal1" class="modal-trigger">Entrar</a></label>
                        </div>
                    </div>
                </div>
            </div>
            <div id="modal1" class="modal">
                <div class="modal-content">
                    <div class="row" id="divModal">
                        <form class="col s12" action="cadastrar" method="post">
                            <div class="row">
                                <div class="input-field col s6">
                                    <i class="material-icons prefix">account_circle</i>
                                    <input id="primeiroNome" type="text" class="validate" name="primeiroNome" class="inputs">
                                    <label for="primeiroNome">Nome</label>
                                </div>
                                <div class="input-field col s6">
                                    <input id="sobrenome" type="text" class="validate" name="sobrenome" class="inputs">
                                    <label for="sobrenome">Sobrenome</label>
                                </div>
                            </div>

                            <div class="row">
                                <div class="input-field col s6">
                                    <i class="material-icons prefix">perm_identity</i>
                                    <input id="cpf" type="text" class="validate" name="cpf" class="inputs">
                                    <label for="cpf">Cpf</label>
                                </div>
                                <div class="input-field col s6">
                                    <i class="material-icons prefix">local_phone</i>
                                    <input id="telefone" type="text" class="validate" name="telefone" class="inputs">
                                    <label for="telefone">Telefone</label>
                                </div>
                            </div>

                            <div class="row">
                                <div class="input-field col s6">
                                    <i class="material-icons prefix">date_range</i>
                                    <input type="text" class="datepicker" placeholder="Data de Nascimento" name="nascimento" class="inputs">
                                </div>
                                <div class="input-field col s6">
                                    <i class="material-icons prefix">email</i>
                                    <input id="email" type="email" class="validate" name="email" class="inputs">
                                    <label for="email">Email</label>
                                </div>
                            </div>

                            <div class="row">
                                <div class="input-field col s6">
                                    <i class="material-icons prefix">lock</i>
                                    <input id="senha" type="password" class="validate" name="senha" class="inputs">
                                    <label for="senha">Senha</label>
                                </div>
                                <div class="input-field col s6">
                                    <i class="material-icons prefix">lock</i>
                                    <input id="ConSenha" type="password" class="validate" class="inputs">
                                    <label for="ConSenha">Confirmar senha</label>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <a href="#!" class="modal-close waves-effect waves-green btn-flat">Cancelar</a>
                                <button class="btn waves-effect waves-light" type="submit" name="action" id="btnCadastrar">Cadastrar</button>
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
