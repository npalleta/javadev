package br.edu.infnet.apppedido.controller;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import br.edu.infnet.apppedido.model.domain.Comida;

@Controller
public class ComidaController {

	private Map<Integer, Comida> mapaComida = new HashMap<Integer, Comida>();

	public Collection<Comida> obterLista(){
		return mapaComida.values();
	}
	
	public void incluir(Comida comida) {
		mapaComida.put(comida.getCodigo(), comida);		
		System.out.println("[Comida] Inclusão realizada com sucesso: " + comida);		
	}
	
	public void excluir(int codigo) {
		mapaComida.remove(codigo);
	}

	@GetMapping(value = "/comida/lista")
	public String telaLista(Model model) {

		model.addAttribute("listaComida", obterLista());
		
		return "comida/lista";
	}

	@GetMapping(value = "/comida/{codigo}/excluir")
	public String exclusao(@PathVariable int codigo) {
		
		excluir(codigo);

		return "redirect:/comida/lista";
	}
}	