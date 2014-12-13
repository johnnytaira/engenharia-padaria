package br.com.caelum.vraptor.padaria;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.controller.IndexController;
import br.com.caelum.vraptor.validator.Validator;
import br.com.padaria.dao.UsuarioDao;
import br.com.padaria.session.UsuarioWeb;

@Controller
public class UsuarioController {
	
	@Inject private UsuarioDao usuarioDao;
	@Inject private Result result;
	@Inject private Validator validator;
	@Inject private UsuarioWeb usuarioWeb;
	
	
	public UsuarioController(UsuarioDao usuarioDao, Result result, Validator validator, UsuarioWeb usuarioWeb){
		this.usuarioDao = usuarioDao;
		this.result = result;
		this.validator = validator;
		this.usuarioWeb = usuarioWeb;
	}
	
	public UsuarioController(){
		
	}
	
	
	
	@Path("/fail")
	public void fail(){
		
	}
	
	@Path("/login")
	public void login(String email, String senha){
		
		
		if( usuarioDao.usuarioLogado(email, senha)){
			result.redirectTo(IndexController.class).indexAdministrador();
		}else if (email!= null || senha !=null){
			result.redirectTo(UsuarioController.class).fail();
		}
		
	}
}
