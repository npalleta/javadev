package br.edu.infnet.apppedido;

import java.io.BufferedReader;
import java.io.FileReader;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

import br.edu.infnet.apppedido.controller.BebidaController;
import br.edu.infnet.apppedido.model.domain.Bebida;

@Order(1)
@Component
public class BebidaLoader implements ApplicationRunner {
	
	@Autowired
	private BebidaController bebidaController;

	@Override
	public void run(ApplicationArguments args) throws Exception {

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

			bebidaController.incluir(bebida);
			
			linha = leitura.readLine();
		}

		leitura.close();		
	}
}