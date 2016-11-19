package cadusuarios;

import org.ayty.webee.Aplicacao;
import org.ayty.webee.ConfigAplicacao;

public class ExemploConfig implements ConfigAplicacao {

	@Override
	public void finalizaAplicacao(Aplicacao app) {
		

	}

	@Override
	public void iniciaAplicacao(Aplicacao app) {
		GerenteUsuarios gerente = new GerenteUsuarios();
		gerente.cadastrarUsuario(new Usuario("joao","123"));
		
		app.adicionaObjeto(GerenteUsuarios.KEY, gerente);

	}

}
