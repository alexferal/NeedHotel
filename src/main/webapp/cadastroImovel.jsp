<%--
  Created by IntelliJ IDEA.
  User: Alex
  Date: 29/06/2019
  Time: 12:17
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

    <div id="divCadastro" class="container white" >
        <h4>Cadastro</h4>
        <c:if test="etapa = 1" scope="session">
            <h6>Dados Gerais</h6>
            <form class="center continer row" action="cadastrarImovel" method="post">

                    <%--          Input nome do imovel          --%>
                <i class="material-icons col s1"></i>
                <input id="nomeImovel" class="col s11" type="text" placeholder="ED. Rozana Soares">
                <label for="nomeImovel">Nome do Imóvel</label>

                    <%--          Input rua          --%>
                <i class="material-icons col s1"></i>
                <input id="nomeRua" class="col s11" type="text" placeholder="rua Santa Cecilia">
                <label for="nomeRua">Rua do Imóvel</label>

                    <%--          Input número da imovel          --%>
                <i class="material-icons col s1"></i>
                <input id="numImovel" class="col s11" type="text" placeholder="ED. Rozana Soares">
                <label for="numImovel">Número</label>

                    <%--          Input bairro          --%>
                <i class="material-icons col s1"></i>
                <input id="nomeBairro" class="col s11" type="text" placeholder="ED. Rozana Soares">
                <label for="nomeBairro">Bairro</label>

            </form>
        </c:if>
        <c:if test="etapa = 2" scope="session">
            <h6>Comodidades</h6>
        </c:if>
        <c:if test="etapa = 3" scope="session">
            <h6>Imagens</h6>
        </c:if>
    </div>

    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script src="js/materialize.js"/>
</body>
</html>
