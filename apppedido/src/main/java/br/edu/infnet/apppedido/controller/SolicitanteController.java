package br.edu.infnet.apppedido.controller;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import br.edu.infnet.apppedido.model.negocio.Solicitante;

@Controller
public class SolicitanteController {

	private Map<String, Solicitante> mapaSolicitante = new HashMap<String, Solicitante>();

	public Collection<Solicitante> obterLista(){
		return mapaSolicitante.values();
	}
	
	public void incluir(Solicitante solicitante) {
		mapaSolicitante.put(solicitante.getCpf(), solicitante);		
		System.out.println("[Solicitante] Inclusão realizada com sucesso: " + solicitante);		
	}
	
	public void excluir(String cpf) {
		mapaSolicitante.remove(cpf);
	}

	@GetMapping(value = "/solicitante/lista")
	public String telaLista(Model model) {

		model.addAttribute("listaSolicitante", obterLista());
		
		return "solicitante/lista";
	}

	@GetMapping(value = "/solicitante/{cpf}/excluir")
	public String exclusao(@PathVariable String cpf) {
		
		excluir(cpf);

		return "redirect:/solicitante/lista";
	}
}