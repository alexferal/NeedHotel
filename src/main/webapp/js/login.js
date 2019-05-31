$(document).ready(function(){
    $('.modal').modal({
        preventScrolling: true
    });
});


$(document).ready(function(){
    $('.datepicker').datepicker({
        i18n: {
            cancel: 'Cancelar',
            clear: 'Limpar',
            done: 'Ok',
            months: ["Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Junho", "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro"],
            monthsShort: ["Jan", "Fev", "Mar", "Abr", "Mai", "Jun", "Jul", "Ago", "Set", "Out", "Nov", "Dez"],
            weekdays: ["Domingo","Segunda", "Terça", "Quarta", "Quinta", "Sexta", "Sábado"],
            weekdaysShort: ["Dom","Seg", "Ter", "Qua", "Qui", "Sex", "Sáb"],
            weekdaysAbbrev: ["DOM","SEG", "TER", "QUA", "QUI", "SEX", "SÁB"]

        },

        format: 'dd/mm/yyyy'
    });
});


$("#senha").on("focusout", function (e) {
    if ($("#senha").val() != $("#ConSenha").val()) {
        $("#ConSenha").removeClass("valid").addClass("invalid");
    } else {
        $("#ConSenha").removeClass("invalid").addClass("valid");
    }
});

$("#ConSenha").on("keyup", function (e) {
    if ($("#senha").val() != $("#ConSenha").val()) {
        $(this).removeClass("valid").addClass("invalid");
    } else {
        $(this).removeClass("invalid").addClass("valid");
    }
});






