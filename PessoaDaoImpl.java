package com.sample.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.sample.model.Pessoa;

public class PessoaDaoImpl implements PessoaDao {
private static PessoaDaoImpl INSTANCE = new PessoaDaoImpl();
private static Map<Integer, Pessoa> database
= new HashMap<Integer, Pessoa>();
private static Integer nextId = 0;

private PessoaDaoImpl() {
}

public static PessoaDaoImpl getInstance() {
return INSTANCE;
}

@Override
public void save(Pessoa pessoa) {
if (pessoa != null) {
if (pessoa.getId() == null) {
nextId++;
pessoa.setId(nextId);
}
database.put(pessoa.getId(), pessoa);
}
}

@Override
public void delete(Integer id) {
if (id != null)
database.remove(id);
}

@Override
public Pessoa getById(Integer id) {
return database.get(id);
}

@Override
public List<Pessoa> findAll() {
return new ArrayList<Pessoa>(database.values());
}
}
