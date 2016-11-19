package cadusuarios;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import cadusuarios.CadastroUsuarioException;
import cadusuarios.Usuario;

public class GerenteUsuarios {
	

	public static final String KEY = "GerenteUsuarioshaha";

	private Map<String,Usuario> usuarios;
	private List<Usuario> listaUsuarios;

	
	public GerenteUsuarios(){
		usuarios = new HashMap<String,Usuario>();
		listaUsuarios = new LinkedList<Usuario>();
	}

	public void cadastrarUsuario(Usuario usuario) {
		if(usuarios.containsKey(usuario.getLogin())) {
			throw new CadastroUsuarioException("Já existe um login " + usuario.getLogin());
		}
		listaUsuarios.add(usuario);
		usuarios.put(usuario.getLogin(), usuario);
	}

	public boolean existeUsuario(String login) {
		return this.usuarios.containsKey(login);
	}

	public Usuario getUsuario(String login) {
		return usuarios.get(login);
	}
	
	public List<Usuario> getUsuarios() {
		return this.listaUsuarios;
	}
	public void removerUsuario(String login){
		if(!usuarios.containsKey(login)){
			throw new CadastroUsuarioException("Não existe um usuário com login "+login);
		}
		listaUsuarios.remove(usuarios.remove(login));
	}

}
