package br.edu.infnet.apppedido;

import java.io.BufferedReader;
import java.io.FileReader;
import java.util.HashMap;
import java.util.Map;

import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

import br.edu.infnet.apppedido.model.negocio.Bebida;

@Order(1)
@Component
public class BebidaLoader implements ApplicationRunner {

	@Override
	public void run(ApplicationArguments args) throws Exception {
		
		Map<Integer, Bebida> mapaBebida = new HashMap<Integer, Bebida>();
		
		FileReader file = new FileReader("arquivos/bebida.txt");
		BufferedReader leitura = new BufferedReader(file);
		
		String linha = leitura.readLine();
		
		String[] campos = null;
		
		while(linha != null) {
			campos = linha.split(";"); 
					
			Bebida bebida = new Bebida(
					campos[0], 
					Float.valueOf(campos[1]), 
					Integer.valueOf(campos[2]), 
					Boolean.valueOf(campos[3]), 
					Float.valueOf(campos[4]), 
					campos[5]
				);				
			
			mapaBebida.put(bebida.getCodigo(), bebida);

			linha = leitura.readLine();
		}

		for(Bebida bebida : mapaBebida.values()) {
			System.out.println("[Bebida] Inclusão realizada com sucesso: " + bebida);			
		}

		leitura.close();		
	}
}