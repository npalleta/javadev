package br.edu.infnet.apppedido.model.negocio;

public class Bebida extends Produto {

	private boolean gelada;
	private float tamanho;
	private String marca;
	
	public Bebida() {

	}

	public Bebida(String nome, float valor, int codigo, boolean gelada, float tamanho, String marca) {
		super(nome, valor, codigo);
		this.gelada = gelada;
		this.tamanho = tamanho;
		this.marca = marca;
	}
	
	@Override
	public String toString() {
		return String.format("%s;%s;%.2f;%s", 
				super.toString(),
				gelada, 
				tamanho, 
				marca
			);
	}

	public boolean isGelada() {
		return gelada;
	}

	public void setGelada(boolean gelada) {
		this.gelada = gelada;
	}

	public float getTamanho() {
		return tamanho;
	}

	public void setTamanho(float tamanho) {
		this.tamanho = tamanho;
	}

	public String getMarca() {
		return marca;
	}

	public void setMarca(String marca) {
		this.marca = marca;
	}
}