package br.com.padaria.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import br.com.padaria.model.Produto;
import br.com.padaria.util.FabricaSession;


public class ProdutoDao {

	private Session session;
	
	public ProdutoDao(){
		this.session = FabricaSession.getSession();
	}
	
	public List<Produto> listaProduto(){
		return session.createCriteria(Produto.class).list();
	}
	
	public void salva(Produto produto){
		Transaction tx = session.beginTransaction();
		session.save(produto);
		tx.commit();
	}

}
