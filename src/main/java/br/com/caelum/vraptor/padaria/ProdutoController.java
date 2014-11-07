package br.com.caelum.vraptor.padaria;

import java.util.List;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;
import br.com.padaria.dao.ProdutoDao;
import br.com.padaria.model.CategoriaProduto;
import br.com.padaria.model.Produto;

@Controller
public class ProdutoController {
	
	@Inject private ProdutoDao produtoDao;
	@Inject private Result result;
	
	public ProdutoController(){
		
	}
	@Path("/formulario")
	public void formulario(){
		
	}
	
	public ProdutoController(ProdutoDao produtoDao){
		this.produtoDao = new ProdutoDao();
	}
	
	@Path("/lista")
	public void lista(){
		List<Produto> listaProduto = produtoDao.listaProduto();
		result.include("produtos", listaProduto);
		
	}
	
	@Path("/cadastra")
	public void cadastra(String nome, String descricao, String preco, String quantidade, String categoria){
		System.out.println(nome);
		Produto produto = new Produto();
		produto.setNome(nome);
		produto.setDescricao(descricao);
		produto.setPreco(Double.parseDouble(preco));
		produto.setQuantidade(Integer.parseInt(quantidade));
		produto.setCategoria(CategoriaProduto.valueOf(categoria));
		produtoDao.salva(produto);
		result.redirectTo(ProdutoController.class).lista();
	}
}
