package br.com.padaria.session;

import java.io.Serializable;

import javax.enterprise.context.SessionScoped;

import br.com.padaria.model.Usuario;

/**
 * Classe para armazenar o Usuário em uma sessão
 * @author Johnny Taira
 *
 */
@SessionScoped
@SuppressWarnings("serial")
public class UsuarioWeb implements Serializable {
	private Usuario logado;
	
	public void login(Usuario usuario){
		this.logado = usuario;
	}
	
	public String getEmail(){
		return logado.getEmail();
	}
	
	public boolean isLogado(){
		return logado != null;
	}
}
