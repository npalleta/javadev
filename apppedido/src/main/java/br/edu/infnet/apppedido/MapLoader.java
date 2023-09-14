package br.edu.infnet.apppedido;

import java.util.HashMap;
import java.util.Map;

import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

import br.edu.infnet.apppedido.model.negocio.Solicitante;

@Order(6)
@Component
public class MapLoader implements ApplicationRunner {

	@Override
	public void run(ApplicationArguments args) throws Exception {
	
		Map<String, Solicitante> mapa = new HashMap<String, Solicitante>();
		mapa.put("111", new Solicitante("maria", "111", "maria@maria.com"));
		mapa.put("123", new Solicitante("jose", "123", "jose@jose.com"));
		mapa.put("234", new Solicitante("aninha", "234", "ana@ana.com"));
		
		//recuperar as chaves do mapa
		mapa.keySet();
		
		//recuperar os valores do mapa
		mapa.values();

		//remover um valor através da chave
		mapa.remove("234");

		//recuperar um valor através da chave
		mapa.get("234");
	}
}