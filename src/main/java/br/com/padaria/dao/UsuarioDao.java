package br.com.padaria.dao;

import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import br.com.padaria.model.Usuario;
import br.com.padaria.util.FabricaSession;

public class UsuarioDao {

	private Session session;
	
	
	public UsuarioDao(){
		this.session = FabricaSession.getSession();
	}
	
	public boolean usuarioLogado(String email, String senha){
		
		Usuario encontrado = (Usuario) session.createCriteria(Usuario.class).add(Restrictions.eq("email", email)).uniqueResult();

		return encontrado !=null;
		//		List<Usuario> todosUsuarios = session.createCriteria(Usuario.class).list();
//		for(Usuario u: todosUsuarios){
//			if (u.getEmail().equals(email) && u.getSenha().equals(senha)){
//				return true;
//			}
//		}
//		
//		return false;
		
	}
}
