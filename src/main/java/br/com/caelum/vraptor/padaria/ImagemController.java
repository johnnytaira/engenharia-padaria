package br.com.caelum.vraptor.padaria;

import java.io.File;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.observer.upload.UploadedFile;
import br.com.caelum.vraptor.validator.Validator;
import br.com.padaria.imagens.Imagens;
import br.com.padaria.model.Produto;

@Controller
public class ImagemController {
	
	@Inject
	private final Validator validator;
	@Inject
	private final Imagens imagens;
	@Inject
	private final Result result;
	
	
	public ImagemController(Validator validator, Imagens imagens, Result result){
		this.validator=validator;
		this.imagens=imagens;
		this.result = result;
	}
	
	@Path("/formulario")
	public void formulario(){
		
	}

	@Path("/upload")
	public void upload(Produto produto, UploadedFile imagem){
		//validator.onErrorRedirectTo(ProdutoController.class).cadastra(produto.getNome(), produto.getDescricao(), produto.getPreco().toString(), produto.getQuantidade().toString(), produto.getCategoria().toString());
		//imagens.salva(imagem, produto);
		
		//result.redirectTo(ProdutoController.class).cadastra(produto.getNome(), produto.getDescricao(), produto.getPreco().toString(), produto.getQuantidade().toString(), produto.getCategoria().toString());
		
	}
	
	@Get("/produtos/imagem")
	public File download(Produto produto){
		
		return imagens.mostra(produto);
	}
}
