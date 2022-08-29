package br.com.relatorios.model.cobertura.novembro;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import br.com.relatorios.model.cobertura.novembro.ColunasNovembro;


@Entity
public class InfoNovembroDetalhado {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@Column(length = 55, nullable = false)
	private String descricao;
	private ColunasNovembro coluna;
	private String tipo;
	private String titulo;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}

	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	public ColunasNovembro getColuna() {
		return coluna;
	}
	public void setColuna(ColunasNovembro coluna) {
		this.coluna = coluna;
	}
	

	public String getTipo() {
		return tipo;
	}
	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
	public String getTitulo() {
		return titulo;
	}
	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	
	
}
