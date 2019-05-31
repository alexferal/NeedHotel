<%--
  Created by IntelliJ IDEA.
  User: Alex
  Date: 28/05/2019
  Time: 23:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    <head>
        <title>Need Hotel</title>
        <link href="css/materialize.css" type="text/css" rel="stylesheet"/>
        <link type="text/css" rel="stylesheet" href="css/materialize.min.css"/>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    </head>
    <body>

        <div style="position: absolute; z-index: 999;">
            <a href="#" data-target="slide-out" class="sidenav-trigger">
                <i class="medium material-icons white-text">menu</i>
            </a>
            <ul id="slide-out" class="sidenav">
                <li><a href="#!"><i class="material-icons">home</i>Home</a></li>
                <li><a href="#!"><i class="material-icons">info</i>Sobre</a></li>
            </ul>
        </div>

        <nav>
            <div class="nav-wrapper black">
                <a href="#" class="brand-logo center">Need Hotel</a>
                <ul id="nav-mobile" class="right hide-on-med-and-down">
                    <li><a href="#">Olá, <c:out value="${usuarioLogado.nome}"/></a></li>

                        <li><form action="logout" method="post"><button class="waves-effect waves-teal btn-flat" href="#" type="submit" name="action">Logout</button></form></li>
                </ul>
            </div>
        </nav>



        <div class="carousel carousel-slider center row">
            <div class="carousel-fixed-item center">

                <%--        Elemento fixo ao centro do slide        --%>
                <form class="col s8 offset-s2 white row" style="border-radius: 10px;">
                    <input class="col s10" type="text" placeholder="Cidades, Hoteis, ...">
                    <a href="#" class="col s2"><i class="medium material-icons black-text">search</i></a>
                </form>

            </div>
            <a class="carousel-item">
                <img src="imagem/natal.jpg">
            </a>
            <a class="carousel-item">
                <img src="imagem/riodejaneiro.jpg">
            </a>
            <a class="carousel-item">
                <img src="imagem/curitiba.jpg">
            </a>
            <a class="carousel-item">
                <img src="imagem/recife.jpg">
            </a>
        </div>




        <%--    div dos slides do cabeçário    --%>

        <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script src="js/materialize.js"/>
        <script src="js/materialize.min.js"></script>
        <script>
            $(document).ready(function(){
                $('.sidenav').sidenav();
            });
        </script>
        <script>
            $('.carousel.carousel-slider').carousel({
                fullWidth: true,
                indicators: true
            });
        </script>

    </body>
</html>
