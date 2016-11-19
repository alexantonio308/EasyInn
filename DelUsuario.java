package acoes;

import java.util.List;

import org.ayty.webee.Acao;
import org.ayty.webee.MetodoHttp;
import org.ayty.webee.Requisicao;
import org.ayty.webee.Resposta;

import cadusuarios.GerenteUsuarios;
import cadusuarios.Usuario;

public class DelUsuario extends Acao {
	
	protected void executar(Requisicao req, Resposta resp){
		GerenteUsuarios gerente = (GerenteUsuarios) this.getAplicacao().recuperarObjeto(GerenteUsuarios.KEY);
		
		String login = req.getParametro("login");
		gerente.removerUsuario(login);
		
		List<Usuario> usuarios = gerente.getUsuarios();
		
		resp.adicionarDado("usuarios",  usuarios);
		resp.abrirPagina("/CadUsuario.bee");
	}

}
