package br.com.padaria.dao;

import java.util.List;

import org.hibernate.Session;

import br.com.padaria.model.Usuario;
import br.com.padaria.util.FabricaSession;

public class UsuarioDao {

	private Session session;
	
	
	public UsuarioDao(){
		this.session = FabricaSession.getSession();
	}
	
	public boolean usuarioLogado(String email, String senha){
		List<Usuario> todosUsuarios = session.createCriteria(Usuario.class).list();
		for(Usuario u: todosUsuarios){
			if (u.getEmail().equals(email) && u.getSenha().equals(senha)){
				return true;
			}
		}
		
		return false;
		
	}
}
