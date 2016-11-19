package cadusuarios;

public class Usuario{
	
	private String login, senha, nome;
	
	public Usuario(String login, String senha, String nome){
		this(login,senha);
		this.nome = nome;
	}
	
	public Usuario(String login, String senha){
		this.login = login;
		this.senha = senha;
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

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}
	

}
