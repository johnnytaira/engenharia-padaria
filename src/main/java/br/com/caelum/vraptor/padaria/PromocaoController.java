package br.com.caelum.vraptor.padaria;

import java.util.List;

import javax.inject.Inject;

import org.joda.time.DateTime;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.validator.SimpleMessage;
import br.com.caelum.vraptor.validator.Validator;
import br.com.padaria.dao.ProdutoDao;
import br.com.padaria.dao.PromocaoDao;
import br.com.padaria.model.Produto;
import br.com.padaria.model.Promocao;

@Controller
public class PromocaoController {
	
	
	@Inject
	private Validator validator;
	@Inject
	private PromocaoDao promocaoDao;
	@Inject
	private Result result;
	
	public PromocaoController(PromocaoDao promocaoDao, Validator validator){
		this.promocaoDao = promocaoDao;
		this.validator = validator;
	}
	
	public PromocaoController(){
		
	}
	
	@Path("/formulario-promocao")
	public void formularioPromocao(){
		ProdutoDao produtoDao = new ProdutoDao();
		result.include("produtos", produtoDao.listaProduto());
	}
	
	@Path("/cadastra-promocao")
	public void cadastra(String idProduto, String novoValor, String validoAte ){
		//FIXME tratamento caso produto seja nulo
		
		ProdutoDao produtoDao = new ProdutoDao();
		result.include("produtos", produtoDao.listaProduto());
		Produto produto = produtoDao.getById(Integer.parseInt(idProduto));
		if (produto == null){
			validator.add(new SimpleMessage("Produto Inexistente", "produto"));
		}
		Promocao promocao = new Promocao();
		promocao.setProduto(produto);
		promocao.setValorAntigo(produto.getPreco());
		promocao.setNovoValor(Double.parseDouble(novoValor));
		promocao.setValidoAte(new DateTime(validoAte));
		promocaoDao.salva(promocao);
		result.redirectTo(PromocaoController.class).listaPromocoes();
	}
	
	//mudar a path
	@Path("/remove-promocao")
	public void deleta(Integer id){
		Promocao promocao = promocaoDao.getById(id);
		Produto produto = promocao.getProduto();
		produto.setPreco(promocao.getValorAntigo());
		new ProdutoDao().edita(produto);
		promocaoDao.remove(promocao);
		result.redirectTo(this).listaPromocoes();
	}
	@Path("/lista-promocoes")
	public void listaPromocoes(){
		List<Promocao> listPromocoes= promocaoDao.lista();
		result.include("promocoes", listPromocoes);
	}

}
