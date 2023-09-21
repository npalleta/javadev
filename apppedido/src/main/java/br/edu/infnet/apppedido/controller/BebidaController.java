package br.edu.infnet.apppedido.controller;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import br.edu.infnet.apppedido.model.domain.Bebida;

@Controller
public class BebidaController {

	private Map<Integer, Bebida> mapaBebida = new HashMap<Integer, Bebida>();

	public Collection<Bebida> obterLista(){
		return mapaBebida.values();
	}
	
	public void incluir(Bebida bebida) {
		mapaBebida.put(bebida.getCodigo(), bebida);		
		System.out.println("[Bebida] Inclusão realizada com sucesso: " + bebida);		
	}
	
	public void excluir(int codigo) {
		mapaBebida.remove(codigo);
	}

	@GetMapping(value = "/bebida/lista")
	public String telaLista(Model model) {

		model.addAttribute("listaBebida", obterLista());
		
		return "bebida/lista";
	}

	@GetMapping(value = "/bebida/{codigo}/excluir")
	public String exclusao(@PathVariable int codigo) {
		
		excluir(codigo);

		return "redirect:/bebida/lista";
	}
}	