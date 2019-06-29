<%--
  Created by IntelliJ IDEA.
  User: Alex
  Date: 29/06/2019
  Time: 12:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib
        prefix="c"
        uri="http://java.sun.com/jsp/jstl/core"
%>
<html>
<head>
    <title>Need Hotel</title>
    <link href="css/materialize.css" type="text/css" rel="stylesheet"/>
    <link type="text/css" rel="stylesheet" href="css/materialize.min.css"/>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="css/cadastroImovel.css" rel="stylesheet">
</head>
<body class="blue-grey darken-1">

    <div id="divCadastro" class="container white" >
        <h4>Cadastro</h4>
        <c:if test="${etapa eq '1'}">
            <h6>Dados Gerais</h6>
            <form class="center continer row" action="cadastrarImovel" method="post">

                <%--          Input nome do imovel          --%>
                <div class="input-field col s12">
                    <input id="nomeImovel" class="validate inputs" type="text" placeholder="Ex.: ED. Rozana Soares">
                    <label for="nomeImovel">Nome do Imóvel</label>
                </div>

                <%--          Input rua          --%>
                <div class="input-field col s12">
                    <input id="nomeRua" class="validate inputs" type="text" placeholder="Ex.: rua Santa Cecilia">
                    <label for="nomeRua">Rua do Imóvel</label>
                </div>

                <%--          Input número da imovel          --%>
                <div class="input-field col s6">
                    <input id="numImovel" class="validate inputs" type="text" placeholder="Ex.: 123">
                    <label for="numImovel">Número</label>
                </div>

                <%--          Input CEP          --%>
                <div class="input-field col s6">
                    <input id="numCep" class="validate inputs" type="text" placeholder="Ex.: 55555-333">
                    <label for="numCep">CEP</label>
                </div>

                <%--          Input bairro          --%>
                <div class="input-field col s12">
                    <input id="nomeBairro" class="validate inputs" type="text" placeholder="Ex.: Centro">
                    <label for="nomeBairro">Bairro</label>
                </div>

                <%--          Input cidade          --%>
                <div class="input-field col s6">
                    <input id="nomeCidades" class="validate inputs" type="text" placeholder="Ex.: Cidadopólis">
                    <label for="nomeCidades">Cidade</label>
                </div>

                <%--          Input estado          --%>
                <div class="input-field col s6">
                    <select id="selectEstado" class="selects validate">
                        <option value="" disabled selected>Selecione seu estado</option>
                        <optgroup label="Centro-Oeste">
                            <option value="GO">Goiais</option>
                            <option value="MT">Mato Grosso</option>
                            <option value="MS">Mato Grosso do Sul</option>
                        </optgroup>
                        <optgroup label="Nordeste">
                            <option value="AL">Alagoas</option>
                            <option value="BA">Bahia</option>
                            <option value="CE">Ceará</option>
                            <option value="MA">Maranhão</option>
                            <option value="PB">Paraíba</option>
                            <option value="PE">Pernambuco</option>
                            <option value="PI">Piauí</option>
                            <option value="RN">Rio Grande do Norte</option>
                            <option value="SE">Sergipe</option>
                        </optgroup>
                        <optgroup label="Norte">
                            <option value="AC">Acre</option>
                            <option value="AP">Amapá</option>
                            <option value="AM">Amazonas</option>
                            <option value="PA">Pará</option>
                            <option value="RO">Rondônia</option>
                            <option value="RR">Roraima</option>
                            <option value="TO">Tocantins</option>
                        </optgroup>
                        <optgroup label="Sudeste">
                            <option value="ES">Espírito Santo</option>
                            <option value="MG">Minas Gerais</option>
                            <option value="RJ">Rio de Janeiro</option>
                            <option value="SP">São Paulo</option>
                        </optgroup>
                        <optgroup label="Sul">
                            <option value="PR">Paraná</option>
                            <option value="RS">Rio Grande do Sul</option>
                            <option value="SC">Santa Catarina</option>
                        </optgroup>
                    </select>
                    <label for="selectEstado">Estados</label>
                </div>

                <%--          Input preço          --%>
                <div class="input-field col s12">
                    <input id="valorDiaria" class="validate inputs" type="text" placeholder="Ex.: 500,00">
                    <label for="valorDiaria">Diaria</label>
                </div>

                <div class="modal-footer center">
                    <a href="#!" class="modal-close waves-effect waves-green btn-flat">Cancelar</a>
                    <button class="btn waves-effect waves-light" type="submit" name="action">Próximo</button>
                </div>

            </form>
        </c:if>
        <c:if test="${etapa eq '2'}">
            <h6>Comodidades</h6>
            <form class="center continer row" action="cadastrarImovel" method="post">

                    <%--          Input quartos          --%>
                <div class="input-field col s6">
                    <input id="quarto" class="validate inputs" type="text" placeholder="Ex.: 2">
                    <label for="quarto">Quarto</label>
                </div>

                    <%--          Input banheiros          --%>
                <div class="input-field col s6">
                    <input id="banheiro" class="validate inputs" type="text" placeholder="Ex.: 1">
                    <label for="banheiro">Banheiro</label>
                </div>

                    <%--          Input cozinha          --%>
                <div class="input-field col s6">
                    <input id="cozinha" class="validate inputs" type="text" placeholder="Ex.: 1">
                    <label for="cozinha">Cozinha</label>
                </div>

                    <%--          Input varanda          --%>
                <div class="input-field col s6">
                    <input id="varanada" class="validate inputs" type="text" placeholder="Ex.: 1">
                    <label for="varanada">Varanda</label>
                </div>

                    <%--          Input cama          --%>
                <div class="input-field col s6">
                    <input id="cama" class="validate inputs" type="text" placeholder="Ex.: 1">
                    <label for="cama">Varanda</label>
                </div>

                    <%--          CheckBox mobiliado          --%>
                <div class="input-field col s6">
                    <input type="checkbox" class="filled-in" />
                    <span>Mobiliado</span>
                </div>

                <div class="modal-footer center col s12">
                    <a href="#!" class="modal-close waves-effect waves-green btn-flat">Cancelar</a>
                    <button class="btn waves-effect waves-light" type="submit" name="action">Próximo</button>
                </div>

            </form>

        </c:if>
        <c:if test="${etapa eq '3'}">
            <h6>Imagens</h6>
            <form class="center continer row" action="cadastrarImovel" method="post">

                <div class="file-field input-field col s12">
                    <div class="btn">
                        <span>Fotos</span>
                        <input type="file" multiple>
                    </div>
                    <div class="file-path-wrapper">
                        <input class="file-path validate" type="text" placeholder="Faça o upload das fotos do imóvel aqui">
                    </div>
                </div>

                <div class="modal-footer center col s12">
                    <a href="#!" class="modal-close waves-effect waves-green btn-flat">Cancelar</a>
                    <button class="btn waves-effect waves-light" type="submit" name="action">Concluir</button>
                </div>

            </form>
        </c:if>
    </div>

    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script src="js/materialize.js"></script>
    <script>
        $(document).ready(function(){
            $('select').formSelect();
        });
    </script>
</body>
</html>
