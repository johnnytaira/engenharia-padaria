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
	
	public Produto getById(Integer id){
		return (Produto) session.get(Produto.class, id);
	}
	
	public void edita(Produto produto){
		Transaction tx = session.beginTransaction();
		session.update(produto);
		tx.commit();
	}
	
	public void salva(Produto produto){
		Transaction tx = session.beginTransaction();
		session.save(produto);
		tx.commit();
	}

	public void remove(Produto produto){
		Transaction tx = session.beginTransaction();
		session.delete(produto);;
		tx.commit();
	}
}
