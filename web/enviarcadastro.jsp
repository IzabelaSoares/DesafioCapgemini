<%@page import="java.util.concurrent.TimeUnit"%>
<%@page import="java.sql.Date"%>
<%@page import="dominio.Anuncio"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%  //INSTANCIAR O CADASTRO DE ANUNCIO  - TABELA CADASTRO    
    Anuncio cadastro = new Anuncio();

    //PEGAR OS INPUTS DA TELA - TABELA CADASTRO
    String cliente = request.getParameter("cliente");
    String nome = request.getParameter("nome");
    Date inicio = Date.valueOf(request.getParameter("inicio"));
    Date termino = Date.valueOf(request.getParameter("termino"));
    Integer investimento = Integer.parseInt(request.getParameter("investimento"));

    //PASSAR OS PARAMETROS PARA O CADASTRO DE ANÚNCIO - TABELA CADASTRO
    cadastro.setNome(nome);
    cadastro.setCliente(cliente);
    cadastro.setInicio(inicio);
    cadastro.setTermino(termino);
    cadastro.setInvestimento(investimento);

    //INCLUIR NO CADASTRO E INFORMAR NA URL
    if (cadastro.incluir()) {
        response.sendRedirect("cadastrar.jsp?pmensagem=Anuncio salvo com sucesso");
    } else {
        response.sendRedirect("cadastrar.jsp?pmensagem=Problemas ao salvar anuncio");
    }

    //INSTANCIAR O CADASTRO DE ANUNCIO - TABELA CONSULTA
    Anuncio novo = new Anuncio();

    //CALCULAR A DIFERENÇA ENTRE DATAS  
    long diff = termino.getTime() - inicio.getTime();

    TimeUnit time = TimeUnit.DAYS;
    long difference = time.convert(diff, TimeUnit.MILLISECONDS);
    
    //CALCULAR INVESTIMENTO TOTAL
    Integer dias = (int) (long) difference;
    int investimentoTotal = dias * investimento;

    //CALCULAR MÁXIMO DE VISUALIZAÇÕES
    int vInicial = investimentoTotal * 30;
    int alcance = vInicial;
    int visualizacao = vInicial;
    int compartilhamento;
    
    for (compartilhamento = 0; alcance >= 56 && compartilhamento < 4; compartilhamento++) {
        alcance -= 56;
        visualizacao += 40;
    }

    //CALCULAR MÁXIMO DE CLIQUES
    Double cMax = visualizacao / 8.33333333;
    int clique = (int) (double) cMax;

    //PASSAR OS PARAMETROS PARA O CADASTRO DE ANÚNCIO - TABELA CONSULTA
    novo.setNome(nome);
    novo.setCliente(cliente);
    novo.setVisualizacao(visualizacao);
    novo.setClique(clique);
    novo.setCompartilhamento(compartilhamento);
    novo.setInvestimentoTotal(investimentoTotal);
    
    novo.incluirAnuncio();

%>