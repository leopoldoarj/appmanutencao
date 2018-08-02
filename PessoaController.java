package com.sample.controller;

import java.util.List;

import javax.faces.context.FacesContext;

import com.sample.dao.PessoaDao;
import com.sample.dao.PessoaDaoImpl;
import com.sample.model.Pessoa;

public class PessoaController {
private PessoaDao pessoaDao = PessoaDaoImpl.getInstance();
private Pessoa pessoa;

public PessoaController() {
pessoa = new Pessoa();
}

public void save() {
pessoaDao.save(pessoa);
pessoa = new Pessoa();
}

public void edit() {
// pega o parametro passado no link
Integer id = Integer.parseInt((String)
FacesContext.getCurrentInstance().getExternalContext()
.getRequestParameterMap().get("id"));
pessoa = pessoaDao.getById(id);
}

public void delete(){
// pega o parametro passado no link
Integer id = Integer.parseInt((String)
FacesContext.getCurrentInstance().getExternalContext()
.getRequestParameterMap().get("id"));
pessoaDao.delete(id);
}

// getters e setters
public Pessoa getPessoa() {
return pessoa;
}

public void setPessoa(Pessoa pessoa) {
this.pessoa = pessoa;
}

public List<Pessoa> getPessoas() {
return pessoaDao.findAll();
}
}
