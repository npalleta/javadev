package br.edu.infnet.apppedido.controller;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import br.edu.infnet.apppedido.model.domain.Sobremesa;

@Controller
public class SobremesaController {

	private Map<Integer, Sobremesa> mapaSobremesa = new HashMap<Integer, Sobremesa>();

	public Collection<Sobremesa> obterLista(){
		return mapaSobremesa.values();
	}
	
	public void incluir(Sobremesa sobremesa) {
		mapaSobremesa.put(sobremesa.getCodigo(), sobremesa);		
		System.out.println("[Sobremesa] Inclusão realizada com sucesso: " + sobremesa);		
	}
	
	public void excluir(int codigo) {
		mapaSobremesa.remove(codigo);
	}

	@GetMapping(value = "/sobremesa/lista")
	public String telaLista(Model model) {

		model.addAttribute("listaSobremesa", obterLista());
		
		return "sobremesa/lista";
	}

	@GetMapping(value = "/sobremesa/{codigo}/excluir")
	public String exclusao(@PathVariable int codigo) {
		
		excluir(codigo);

		return "redirect:/sobremesa/lista";
	}
}	