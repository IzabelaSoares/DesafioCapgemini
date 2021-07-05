package dominio;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import utils.Conexao;

public class Anuncio {

    //VARIAVEIS DE CADASTRO
    private Integer id;
    private String nome;
    private String cliente;
    private Date inicio;
    private Date termino;
    private Integer investimento;

    //VARIAVEIS DE CONSULTA
    private Integer visualizacao;
    private Integer clique;
    private Integer compartilhamento;
    private Integer investimentoTotal;

    //CADASTRO DE ANÚNCIO
    public boolean incluir() {
        String sql = "insert into public.cadastro (nome, cliente, inicio, termino, investimento)"
                + " values( ?, ?, ?, ?, ?)";

        Connection con = Conexao.conectar();
        try {
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, this.nome);
            stm.setString(2, this.cliente);
            stm.setDate(3, this.inicio);
            stm.setDate(4, this.termino);
            stm.setInt(5, this.investimento);
            stm.execute();

        } catch (SQLException ex) {
            System.out.println("ERRO: " + ex.getMessage());
            return false;
        }
        return true;
    }

    //LISTA DE CLIENTES PARA CONSULTAR
    public List<Anuncio> listaClientes() {
        List<Anuncio> lista = new ArrayList<>();
        String sql = "select id, cliente from cadastro";
        
        Connection con = Conexao.conectar();
        try {
            PreparedStatement stm = con.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Anuncio cliente = new Anuncio();
                cliente.setId(rs.getInt("id"));
                cliente.setCliente(rs.getString("cliente"));
                lista.add(cliente);
            }
        } catch (SQLException ex) {
            System.out.println("Erro: " + ex.getMessage());
        }
        return lista;
    }

    //CONSULTAR POR DATA E CLIENTE
    public List<Anuncio> consultar(String cliente, String inicio, String termino) {
        List<Anuncio> lista = new ArrayList<>();
        String sql = "select * from cadastro where cliente = '" + cliente +"' and "
                    + "inicio between '"+ inicio +"' and '"+ termino +"'";
        
        Connection con = Conexao.conectar();
        try {
            PreparedStatement stm = con.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Anuncio consulta = new Anuncio();
                consulta.setId(rs.getInt("id"));
                consulta.setNome(rs.getString("nome"));
                consulta.setCliente(rs.getString("cliente"));
                consulta.setInicio(rs.getDate("inicio"));
                consulta.setTermino(rs.getDate("termino"));
                consulta.setInvestimento(rs.getInt("investimento"));
                lista.add(consulta);
            }
        } catch (SQLException ex) {
            System.out.println("Erro: " + ex.getMessage());
        }
        return lista;
        
    }

    //GETTERS AND SETTERS
    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCliente() {
        return cliente;
    }

    public void setCliente(String cliente) {
        this.cliente = cliente;
    }

    public Date getInicio() {
        return inicio;
    }

    public void setInicio(Date inicio) {
        this.inicio = inicio;
    }

    public Date getTermino() {
        return termino;
    }

    public void setTermino(Date termino) {
        this.termino = termino;
    }

    public Integer getInvestimento() {
        return investimento;
    }

    public void setInvestimento(Integer investimento) {
        this.investimento = investimento;
    }

    public Integer getVisualizacao() {
        return visualizacao;
    }

    public void setVisualizacao(Integer visualizacao) {
        this.visualizacao = visualizacao;
    }

    public Integer getClique() {
        return clique;
    }

    public void setClique(Integer clique) {
        this.clique = clique;
    }

    public Integer getCompartilhamento() {
        return compartilhamento;
    }

    public void setCompartilhamento(Integer compartilhamento) {
        this.compartilhamento = compartilhamento;
    }

    public Integer getInvestimentoTotal() {
        return investimentoTotal;
    }

    public void setInvestimentoTotal(Integer investimentoTotal) {
        this.investimentoTotal = investimentoTotal;
    }

}
