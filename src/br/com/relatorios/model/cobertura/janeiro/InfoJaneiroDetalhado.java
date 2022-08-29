package br.com.relatorios.model.cobertura.janeiro;

import javax.persistence.Column;
import javax.persistence.Entity;


import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


@Entity
public class InfoJaneiroDetalhado {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@Column(length = 55, nullable = false)
	private String descricao;
	private String tipo;
	private ColunasJaneiro coluna;


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
	

	public ColunasJaneiro getColuna() {
		return coluna;
	}
	public void setColuna(ColunasJaneiro coluna) {
		this.coluna = coluna;
	}
	public String getTipo() {
		return tipo;
	}
	public void setTipo(String tipo) {
		this.tipo = tipo;
	}


}


	
	

