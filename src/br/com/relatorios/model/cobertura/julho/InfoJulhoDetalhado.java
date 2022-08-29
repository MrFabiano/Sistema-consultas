package br.com.relatorios.model.cobertura.julho;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import br.com.relatorios.model.cobertura.julho.ColunasJulho;

@Entity
public class InfoJulhoDetalhado {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@Column(length = 30, nullable = false)
	private String descricao;
	private ColunasJulho coluna;
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
	public ColunasJulho getColuna() {
		return coluna;
	}
	public void setColuna(ColunasJulho coluna) {
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
