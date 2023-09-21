package br.edu.infnet.apppedido;

import java.io.BufferedReader;
import java.io.FileReader;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

import br.edu.infnet.apppedido.controller.ComidaController;
import br.edu.infnet.apppedido.model.domain.Comida;

@Order(2)
@Component
public class ComidaLoader implements ApplicationRunner {
	
	@Autowired
	private ComidaController comidaController;

	@Override
	public void run(ApplicationArguments args) throws Exception {

		FileReader file = new FileReader("arquivos/comida.txt");
		BufferedReader leitura = new BufferedReader(file);
		
		String linha = leitura.readLine();
		
		String[] campos = null;
		
		while(linha != null) {
			campos = linha.split(";"); 
					
			Comida comida = new Comida(
					campos[0], 
					Float.valueOf(campos[1]), 
					Integer.valueOf(campos[2]), 
					Float.valueOf(campos[3]), 
					Boolean.valueOf(campos[4]), 
					campos[5]
				);

			comidaController.incluir(comida);

			linha = leitura.readLine();
		}

		leitura.close();		
	}
}