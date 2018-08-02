/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.teste.controllers;
 
import br.com.teste.models.Pessoa;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;
 
/**
 *
 * @author Thiago
 */
@ManagedBean
@ViewScoped
public class PessoaMB implements Serializable {
 
    private Pessoa pessoa = new Pessoa();
    private List<Pessoa> pessoaLista = new ArrayList<Pessoa>();
 
    /** Creates a new instance of PessoaMB */
    public PessoaMB() {
    }
 
    /**Getters e Setters */
    public Pessoa getPessoa() {
        return pessoa;
    }
 
    public void setPessoa(Pessoa pessoa) {
        this.pessoa = pessoa;
    }
 
    public List<Pessoa> getPessoaLista() {
        return pessoaLista;
    }
 
    public void setPessoaLista(List<Pessoa> pessoaLista) {
        this.pessoaLista = pessoaLista;
    }
