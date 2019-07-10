<%--
  Created by IntelliJ IDEA.
  User: danielalves
  Date: 09/07/19
  Time: 21:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
    <link href="css/materialize.css" type="text/css" rel="stylesheet"/>
    <link type="text/css" rel="stylesheet" href="css/materialize.min.css"/>
    <link type="text/css" rel="stylesheet" href="css/busca.css"/>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>
<body>
    <c:import url="menu.jsp"></c:import>

    <%--        Elemento fixo ao centro do slide        --%>
    <form class="col s8 offset-s2 white row" action="buscar" id="formSearch">
        <input class="col s10" id="search" type="text" placeholder="Cidades, Hoteis, ..." name="search">
        <button href="#" id="btnSearch" name="action" class="col s2 btn-flat"><i class="Small material-icons black-text">search</i></button>
    </form>

    <c:if test="${empty imoveis}">
        <h5 class="center">Resultados</h5>
        <h2 class="center">Nenhum resultado encontrado...</h2>
    </c:if>

    <c:if test="${not empty imoveis}">
        <h5 class="center">Resultados</h5>
        <c:forEach items="${imoveis}" var="imovel">
<%--            <div class="row">--%>
<%--                <div class="col s6 m3">--%>
<%--                    <div class="card small" id="cardImovel">--%>
<%--                        <div class="card-image">--%>
<%--                            <img src="imagem/${imovel.foto}">--%>
<%--                            <span class="card-title">${imovel.nome}</span>--%>
<%--                        </div>--%>
<%--                        <div class="card-content">--%>
<%--                            <p>Valor da Diária: ${imovel.valor}</p>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
        </c:forEach>
    </c:if>

<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="js/materialize.js"/>
<script src="js/materialize.min.js"></script>
</body>
</html>
