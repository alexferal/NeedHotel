
//----MÁSCARAS----//
$('#valorDiaria').mask('000000000.00', {reverse: true});

$('.numero').mask('000000000');

$('#cepImovel').mask('00000-000');

$('.words').mask('Z',{translation: {'Z': {pattern: /[a-zA-Z àèìòùÀÈÌÒÙáéíóúýÁÉÍÓÚÝâêî'ôûÂÊÎÔÛãñõÃÑÕäëïöüÿÄËÏÖÜŸçÇßØøÅåÆæœ-]/, recursive: true}}});

$('#cpf').mask('000.000.000-00', {reverse: true});

$('#telefone').mask('(00) 00000-0000');

function validaImovelForm1(form) {
    var reEmail = /^[0-9]{5}-[0-9]{3}$/;
    var cep = form.cepImovel.value

    console.log(reEmail.test(cep));

    // if (padrao.test(form.cepImovel.value)){
    //     Swal.fire(
    //         'DEU CERTO!',
    //         'You clicked the button!',
    //         'success'
    //     )
    //     return false;
    // }else{
    //     Swal.fire(
    //         'DEU ERRADO!',
    //         'You clicked the button!',
    //         'success'
    //     )
    //     return false;
    // }
    return false;
}

