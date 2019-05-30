<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <link type="text/css" rel="stylesheet" href="css/materialize.min.css"/>
        <link type="text/css" rel="stylesheet" href="css/login.css"/>
        <meta charset="UTF-8"/>
    </head>
    <body>
<<<<<<< HEAD
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
                                <a href="#">Entrar</a>
                            </div>
                            <label class="white-text col s6 offset-s7">Ainda não é cadastrado? <a href="#modal1" class="modal-trigger">Entrar</a></label>
                        </div>
                    </div>
                </div>
            </div>
            <div id="modal1" class="modal modal-fixed-footer">
                <div class="modal-content">
                    <div class="row">
                        <form class="col s12">
                            <div class="row">
                                <div class="input-field col s6">
                                    <input id="primeiroNome" type="text" class="validate">
                                    <label for="primeiroNome">Nome</label>
                                </div>
                                <div class="input-field col s6">
                                    <input id="sobrenome" type="text" class="validate">
                                    <label for="sobrenome">Sobrenome</label>
                                </div>
                            </div>

                            <div class="row">
                                <div class="input-field col s6">
                                    <input id="cpf" type="text" class="validate">
                                    <label for="cpf">Cpf</label>
                                </div>
                                <div class="input-field col s6">
                                    <input id="telefone" type="text" class="validate">
                                    <label for="telefone">Telefone</label>
                                </div>
                            </div>

                            <div class="row">
                                <div class="input-field col s6">
                                    <input type="text" class="datepicker" placeholder="Data de Nascimento">
                                </div>
                                <div class="input-field col s6">
                                    <input id="email" type="email" class="validate">
                                    <label for="email">Email</label>
                                </div>
                            </div>

                            <div class="row">
                                <div class="input-field col s6">
                                    <input id="senha" type="password" class="validate">
                                    <label for="senha">Senha</label>
                                </div>
                                <div class="input-field col s6">
                                    <input id="ConSenha" type="password" class="validate">
                                    <label for="ConSenha">Confirmar senha</label>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="modal-footer">
                    <a href="#!" class="modal-close waves-effect waves-green btn-flat">Cancelar</a>
                    <a href="#!" class="modal-close waves-effect waves-green btn-flat">Cadastre-se</a>

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
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script src="js/login.js"></script>
=======
    <div class="container">
        <div class="row">
            <div class="col s5 m6">
                <div class="card blue-grey darken-1">
                    <div class="card-content white-text">
                        <span class="card-title" id="loginTitle">Login</span>
                        <input placeholder="Email" id="first_name" type="text" class="validate">
                        <input placeholder="Senha" id="senha" type="password" class="validate">
                    </div>
                    <div class="card-action">
                        <a href="#">Entrar</a>
                    </div>
                    <label class="white-text">Ainda não é cadastrado? <a href="#">Entrar</a></label>
                </div>
            </div>
        </div>
    </div>



    <script src="js/materialize.min.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
>>>>>>> a64cfb4301484a13093b81acc1e5fd21daded339
    </body>
</html>
