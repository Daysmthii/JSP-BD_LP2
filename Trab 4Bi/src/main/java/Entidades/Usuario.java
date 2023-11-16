package Entidades;

import java.util.ArrayList;

public class Usuario {
	
	private int id;
	private String email;
	private String senha;
	private String nome;
	private String apelido;
	private ArrayList<LivroUsuario> livros;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getApelido() {
		return apelido;
	}
	public void setApelido(String apelido) {
		this.apelido = apelido;
	}
	public ArrayList<LivroUsuario> getLivros() {
		return livros;
	}
	public void setLivros(ArrayList<LivroUsuario> livros) {
		this.livros = livros;
	}
	
	
}
