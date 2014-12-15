package br.com.caelum.vraptor.padaria;

import java.util.List;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;
import br.com.padaria.dao.ProdutoDao;
import br.com.padaria.model.CategoriaProduto;
import br.com.padaria.model.Medida;
import br.com.padaria.model.Produto;

import com.google.common.collect.Lists;

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
	
	public void listaCategoria(CategoriaProduto categoria){
		List<Produto> produtos = produtoDao.listaProdutoPorCategoria(categoria);
		result.include("produtos", produtos);
	}
	
	@Path("/bolos")
	public void bolos(){
		List<Produto> bolos = produtoDao.listaProdutoPorCategoria(CategoriaProduto.BOLOS);
		List<List<Produto>> partition = Lists.partition(bolos, 2);
		result.include("partition", partition);
	}
	
	@Path("/paes")
	public void paes(){
		List<Produto> paes= produtoDao.listaProdutoPorCategoria(CategoriaProduto.PAES);
		List<List<Produto>> partition = Lists.partition(paes, 2);
		result.include("partition", partition);

	}
	
	@Path("/salgados")
	public void salgados(){
		List<Produto> paes= produtoDao.listaProdutoPorCategoria(CategoriaProduto.SALGADOS);
		List<List<Produto>> partition = Lists.partition(paes, 2);
		result.include("partition", partition);

	}
	
	@Path("/doces")
	public void doces(){
		List<Produto> paes= produtoDao.listaProdutoPorCategoria(CategoriaProduto.DOCES);
		List<List<Produto>> partition = Lists.partition(paes, 2);
		result.include("partition", partition);

	}
	
	@Path("/cupcakes")
	public void cupcakes(){
		List<Produto> paes= produtoDao.listaProdutoPorCategoria(CategoriaProduto.CUPCAKES);
		List<List<Produto>> partition = Lists.partition(paes, 2);
		result.include("partition", partition);

	}
	
	@Path("/lanches")
	public void lanches(){
		List<Produto> paes= produtoDao.listaProdutoPorCategoria(CategoriaProduto.LANCHES);
		List<List<Produto>> partition = Lists.partition(paes, 2);
		result.include("partition", partition);

	}
	
	@Path("/cadastra-produto")
	public void cadastra(String foto, String nome, String descricao, String preco, String quantidade,String medida,  String categoria){
		System.out.println(nome);
		Produto produto = new Produto();
		produto.setNome(nome);
		produto.setDescricao(descricao);
		produto.setPreco(Double.parseDouble(preco));
		produto.setMedida(Medida.valueOf(medida));
		produto.setImagem("/images/"+ foto);
		produto.setQuantidade(Integer.parseInt(quantidade));
		produto.setCategoria(CategoriaProduto.valueOf(categoria));
		produtoDao.salva(produto);
		result.redirectTo(ProdutoController.class).lista();
	}
	
	
	@Path("/editaProduto")
	public Produto editaProduto(int id){
		return produtoDao.getById(id);
	}
	
	@Path("/altera-produto")
	public void altera(String id,String nome, String descricao, String preco, String quantidade,String medida,  String categoria){
		Produto produto = produtoDao.getById(Integer.parseInt(id));
		produto.setId(Integer.parseInt(id));
		produto.setCategoria(CategoriaProduto.valueOf(categoria));
		produto.setDescricao(descricao);
		produto.setMedida(Medida.valueOf(medida));
		produto.setNome(nome);
		produto.setPreco(Double.parseDouble(preco));
		produto.setQuantidade(Integer.parseInt(quantidade));
		produtoDao.edita(produto);
		result.redirectTo(this).lista();
	}
	
	@Path("/removeProduto")
	public void remove(int id){
		Produto produto = produtoDao.getById(id);
		produtoDao.remove(produto);
		result.redirectTo(this).lista();
	}
}
