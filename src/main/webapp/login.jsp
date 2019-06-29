<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <link type="text/css" rel="stylesheet" href="css/materialize.min.css"/>
        <link type="text/css" rel="stylesheet" href="css/login.css"/>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <meta charset="UTF-8"/>
    </head>
    <body  class="blue-grey darken-1">
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
                                    <label for="lognome">Email</label>
                                </div>
                                <div class="input-field col s12">
                                    <i class="material-icons prefix">lock</i>
                                    <input id="logsenha" type="password" class="validate" name="logSenha" >
                                    <label for="logsenha">Senha</label>
                                </div>
                                <button id="entrar" type="submited" name="action" class="btn waves-effect waves-teal btn-flat blue lighten-4">Entrar</button>
                            </div>
                        </form>
                        <label class="black-text center">Ainda não é cadastrado? <a href="cadastro.jsp">Entrar</a></label>
                    </div>
                </div>
            </div>
        </main>

        <footer class="page-footer black">
            <div class="footer-copyright">
                <label id="CopyRight" class="white-text">© 2019 NeedHotel - Todos os direitos reservados.</label>
            </div>
        </footer>



        <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
        <script src="js/materialize.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
        <script src="js/login.js"></script>
    </body>
</html>
