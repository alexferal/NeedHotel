$('#valorDiaria').mask('000000000.00', {reverse: true});

$('.numero').mask('000000000');

$('#numCep').mask('00000-000');

$('.words').mask('Z',{translation: {'Z': {pattern: /[a-zA-Z àèìòùÀÈÌÒÙáéíóúýÁÉÍÓÚÝâêî'ôûÂÊÎÔÛãñõÃÑÕäëïöüÿÄËÏÖÜŸçÇßØøÅåÆæœ-]/, recursive: true}}});