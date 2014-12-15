package br.com.padaria.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

import org.hibernate.annotations.Type;
import org.joda.time.DateTime;

/**
 * Modelo para promoção. A ideia é que a promoção armazene o preço antigo e o preço novo
 * de um produto, por enquanto. Adiciona promoção, {@link Produto} passa a ter um novo preço,
 * remove promoção, Produto volta a ter o preço original.
 * @author Johnny Taira
 *
 */
//FIXME Existem outros tipos de promoção!
@Entity
public class Promocao {

	@Id @GeneratedValue
	private Integer id;
	

	@OneToOne 
	@JoinColumn(name="PRODUTO_ID")
	private Produto produto;
	
	private Double valorAntigo;
	private Double novoValor;
	
	@Type(type="org.jadira.usertype.dateandtime.joda.PersistentDateTime")
	private DateTime validoAte;

	public Promocao(){
		
	}
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}
	
	public DateTime getValidoAte() {
		return validoAte;
	}

	public void setValidoAte(DateTime validoAte) {
		this.validoAte = validoAte;
	}
	
	public void setProduto (Produto produto){
		this.produto = produto;
	}
	
	public void setNovoValor(Double novoValor){
		this.novoValor = novoValor;
	}
	
	public Double getNovoValor(){
		return this.novoValor;
	}
	
	public void setValorAntigo(Double valorAntigo){
		this.valorAntigo = valorAntigo;
	}
	
	public Double getValorAntigo(){
		return this.valorAntigo;
	}
	
	public Produto getProduto(){
		return this.produto;
	}
	
}
