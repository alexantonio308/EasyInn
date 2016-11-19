
package acoes;

import java.util.List;

import org.ayty.webee.Acao;
import org.ayty.webee.MetodoHttp;
import org.ayty.webee.Requisicao;
import org.ayty.webee.Resposta;

import cadusuarios.GerenteUsuarios;
import cadusuarios.Usuario;

public class CadUsuario extends Acao {
	
	protected void executar(Requisicao req, Resposta resp){
		
		GerenteUsuarios gerente = (GerenteUsuarios) this.getAplicacao().recuperarObjeto(GerenteUsuarios.KEY);
		List<Usuario> usuarios = gerente.getUsuarios();
		
		resp.adicionarDado("usuarios", usuarios);
		
		if (req.getMetodo().equals(MetodoHttp.POST)){
			String login = req.getParametro("login");
			String senha = req.getParametro("senha");
			String nome = req.getParametro("nome");
					
					if (gerente.existeUsuario(login)){
						resp.adicionarDado("msg", "Já existe um usuário com login" + login);
					}else{
				Usuario user = new Usuario(login, senha, nome);
				gerente.cadastrarUsuario(user);
				resp.adicionarDado("msg", "Usuário cadastrado com sucesso");
				
			}
			
		}

		resp.abrirPagina("/WEB-INF/jsps/CadUsuario.jsp");

		

	}

}
