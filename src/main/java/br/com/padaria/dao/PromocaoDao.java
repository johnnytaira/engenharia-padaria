package br.com.padaria.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import br.com.padaria.model.Produto;
import br.com.padaria.model.Promocao;
import br.com.padaria.util.FabricaSession;

public class PromocaoDao {
	
	private Session session;
	
	public PromocaoDao(){
		this.session = FabricaSession.getSession();
	}
	
	public void salva(Promocao promocao){
		Transaction tx = session.beginTransaction();
		promocao.getProduto().setPreco(promocao.getNovoValor());
		session.saveOrUpdate(promocao.getProduto());
		session.save(promocao.getProduto());
		session.save(promocao);
		tx.commit();
		
	}
	
	public Promocao getById(Integer id){
		Transaction tx = session.beginTransaction();
		Promocao promocao = (Promocao)session.get(Promocao.class, id);
		tx.commit();
		return promocao;
	}
	
	public void remove(Promocao promocao){
		Transaction tx = session.beginTransaction();
		Produto produto = promocao.getProduto();
		produto.setPreco(promocao.getValorAntigo());
		session.delete(promocao);
		tx.commit();
	}

	public List<Promocao> lista(){
		Transaction tx = session.beginTransaction();
		List<Promocao> list = session.createCriteria(Promocao.class).list();
		tx.commit();
		return list;
	}
}
