package br.com.relatorios.model.cobertura.marco;


import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import br.com.relatorios.model.cobertura.marco.ColunasMarco;

@Entity
public class InfoMarcoDetalhado implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@Column(length = 30, nullable = false)
	private String descricao;
	private ColunasMarco coluna;
	private String tipo;

	
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
	public ColunasMarco getColuna() {
		return coluna;
	}
	public void setColuna(ColunasMarco coluna) {
		this.coluna = coluna;
	}
	
	

	public String getTipo() {
		return tipo;
	}
	public void setTipo(String tipo) {
		this.tipo = tipo;

	
   }
}