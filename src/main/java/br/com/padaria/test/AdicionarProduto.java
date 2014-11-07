package br.com.padaria.test;

import br.com.padaria.dao.ProdutoDao;
import br.com.padaria.model.CategoriaProduto;
import br.com.padaria.model.Produto;

public class AdicionarProduto {
	
	
	
	private static Produto criaProduto(){
		Produto produto = new Produto();
		produto.setNome("Pão de Forma");
		produto.setDescricao("Pão");
		produto.setPreco(2.5);
		produto.setQuantidade(10);
		produto.setCategoria(CategoriaProduto.MERCEARIA);
		return produto;
	}
	
	public static void main(String[] args) {
		
		Produto produto = criaProduto();
		new ProdutoDao().salva(produto);
		

	}

}
