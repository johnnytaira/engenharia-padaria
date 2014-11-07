package br.com.padaria.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;


@Entity
public class Usuario {

	@Id @GeneratedValue
	private Long id;
	private String email;
	private String senha;
	
	public void setEmail(String email){
		this.email = email;
	}
	
	public String getEmail(){
		return email;
		
	}
	
	public void setSenha(String senha){
		this.senha = senha;
	}
	
	public String getSenha(){
		return senha;
	}
	
}
