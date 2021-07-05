function VerificarCadastro() {
    //TRANSFORMAR OS CAMPOS EM VARIÁVEIS TODO: TRANSFORMAR STRING EM UPPERCASE PRO BANCO DE DADOS
    nome = document.getElementById('nome').value;
    cliente = document.getElementById('cliente').value;
    inicio = document.getElementById('inicio').value;
    termino = document.getElementById('termino').value;
    investimento = Number(document.getElementById('investimento').value);

    //PEGAR A DATA DE ATUAL DO SISTEMA
    var today = new Date().toISOString().slice(0, 10);

    //VALIDAR E ENVIAR DADOS
    if (nome.length > 99 || nome == null || nome == "") {
        alert(`❌ Por favor, revise o campo NOME! ❌`);
        exit(0);
    }
    if (cliente.length > 99 || cliente == null || cliente == "") {
        alert(`❌ Por favor, revise o campo CLIENTE! ❌`);
        exit(0);

    }
    if (inicio < today) {
        alert(`❌ A DATA DE INICIO não pode ser menor que a data atual! ❌`);
        exit(0);
    }
    if (inicio == null || inicio == "") {
        alert(`❌ Por favor, revise a DATA DE INICIO! ❌`);
        exit(0);
    }
    if (termino < today) {
        alert(`❌ A DATA DE INICIO não pode ser menor que a data atual! ❌`);
        exit(0);
    }
    if (termino == null || termino == "") {
        alert(`❌ Por favor, revise a DATA DE TERMINO! ❌`);
        exit(0);

    }
    if (inicio > termino) {
        alert(`❌ A DATA DE INICIO não pode ser maior que a DATA DE TÉRMINO! ❌`);
        exit(0);

    }
    if (Number.isInteger(investimento) == false || investimento < 1) {
        alert(`❌ O INVESTIMENTO deve ser maior que 1 real e com valores inteiros! ❌`);
        exit(0);
    }
    
    document.forms[0].submit();
}

function Consultar() {
    //TRANSFORMAR OS CAMPOS EM VARIÁVEIS
    cliente = document.getElementById('cliente').value;
    inicio = document.getElementById('inicio').value;
    termino = document.getElementById('termino').value;

    //VALIDAR E ENVIAR DADOS
    if (cliente.length > 99 || cliente == null || cliente == "") {
        alert(`Por favor, revise o campo CLIENTE!`);
        exit(0);
    }
    if (inicio == null || inicio == "") {
        alert(`Por favor, revise a DATA DE INICIO!`);
        exit(0);
    }
    if (termino == null || termino == "") {
        alert(`Por favor, revise a DATA DE TERMINO!`);
        exit(0);
    }
    if (inicio > termino) {
        alert(`A DATA DE INICIO não pode ser maior que a DATA DE TÉRMINO!`);
        exit(0);
    }
    document.forms[0].submit();
}

