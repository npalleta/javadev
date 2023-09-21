package br.edu.infnet.apppedido;

import java.io.BufferedReader;
import java.io.FileReader;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

import br.edu.infnet.apppedido.controller.PedidoController;
import br.edu.infnet.apppedido.model.domain.Bebida;
import br.edu.infnet.apppedido.model.domain.Comida;
import br.edu.infnet.apppedido.model.domain.Pedido;
import br.edu.infnet.apppedido.model.domain.Produto;
import br.edu.infnet.apppedido.model.domain.Sobremesa;
import br.edu.infnet.apppedido.model.domain.Solicitante;

@Order(5)
@Component
public class PedidoLoader implements ApplicationRunner {
	
	@Autowired
	private PedidoController pedidoController;

	@Override
	public void run(ApplicationArguments args) throws Exception {
		
		Map<LocalDateTime, Pedido> mapaPedido = new HashMap<LocalDateTime, Pedido>();
		
		FileReader file = new FileReader("arquivos/pedido.txt");
		BufferedReader leitura = new BufferedReader(file);
		
		String linha = leitura.readLine();
		
		String[] campos = null;
		
		Pedido pedido = null;		
		
		while(linha != null) {
			campos = linha.split(";"); 

			switch (campos[0]) {
			case "P":		
								
				pedido = new Pedido(
						campos[1], 
						new Solicitante(campos[2], campos[3], campos[4]),
						new ArrayList<Produto>()
					);				

				pedidoController.incluir(pedido);

				break;

			case "B":				
				Bebida bebida = new Bebida(
						campos[1], 
						Float.valueOf(campos[2]), 
						Integer.valueOf(campos[3]), 
						Boolean.valueOf(campos[4]), 
						Float.valueOf(campos[5]), 
						campos[6]
					);				
				
				pedido.getProdutos().add(bebida);
				
				break;

			case "C":
				
				Comida comida = new Comida(
						campos[1], 
						Float.valueOf(campos[2]), 
						Integer.valueOf(campos[3]), 
						Float.valueOf(campos[4]), 
						Boolean.valueOf(campos[5]), 
						campos[6]
					);
				
				pedido.getProdutos().add(comida);
				
				break;

			case "S":			
				
				Sobremesa sobremesa = new Sobremesa(
						campos[1], 
						Float.valueOf(campos[2]), 
						Integer.valueOf(campos[3]), 
						Float.valueOf(campos[4]), 
						Boolean.valueOf(campos[5]), 
						campos[6]
					);
				
				pedido.getProdutos().add(sobremesa);

				break;

			default:
				break;
			}
			
			linha = leitura.readLine();
		}

		for(Pedido p : mapaPedido.values()) {
			System.out.println("[Pedido] Inclusão realizada com sucesso: " + p);			
		}

		leitura.close();			
	}

}