package br.com.caelum.vraptor.padaria;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;
import br.com.padaria.dao.UsuarioDao;

@Controller
public class UsuarioController {
	
	@Inject private UsuarioDao usuarioDao;
	@Inject private Result result;
	
	public UsuarioController(){
		
	}
	
	@Path("/fail")
	public void fail(){
		
	}
	
	@Path("/")
	public void login(String email, String senha){
		
		
		//trocar formulario por outra coisa
		if( usuarioDao.usuarioLogado(email, senha)){
			result.redirectTo(ProdutoController.class).formulario();
		}else if (email!= null || senha !=null){
			result.redirectTo(UsuarioController.class).fail();
		}
		
	}
}
