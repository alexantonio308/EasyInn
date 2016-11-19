package acoes;

import org.ayty.webee.Acao;
import org.ayty.webee.Requisicao;
import org.ayty.webee.Resposta;

import cadusuarios.GerenteUsuarios;
import cadusuarios.Usuario;

public class Login extends Acao {

	@Override
	protected void executar(Requisicao req, Resposta resp) {
		String login = req.getParametro("login");
		String senha = req.getParametro("senha");
		
		GerenteUsuarios gerente = (GerenteUsuarios)this.getAplicacao().recuperarObjeto(GerenteUsuarios.KEY);
		
		
		if(gerente.existeUsuario(login)){
			Usuario user = gerente.getUsuario(login);
			if(senha.equals(user.getSenha())){
				resp.abrirPagina("/bemvindo.jsp");
			}else{
				resp.adicionarDado("erro", "Senha inválida!");
				resp.abrirPagina("WEB-INF/jsps/login.jsp");
			}
		}else{
			resp.adicionarDado("erro", "Usuário inexistente!");
			resp.abrirPagina("WEB-INF/jsps/login.jsp");
		}

	}

}
