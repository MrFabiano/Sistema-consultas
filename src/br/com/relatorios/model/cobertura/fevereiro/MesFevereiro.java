package br.com.relatorios.model.cobertura.fevereiro;


import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import br.com.relatorios.model.coberturas.Chave;
import br.com.relatorios.model.cobertura.fevereiro.InfoFevereiroDetalhado;

@Entity
public class MesFevereiro implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@Column(length = 50, nullable = false, unique = true)
	private String descricao;
	private String titulo;
	@OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
	private List<InfoFevereiroDetalhado> informacoes;
	
	@ManyToOne
	private Chave chave;

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

	public List<InfoFevereiroDetalhado> getInformacoes() {
		return informacoes;
	}

	public void setInformacoes(List<InfoFevereiroDetalhado> informacoes) {
		this.informacoes = informacoes;
	}

	public Chave getChave() {
		return chave;
	}

	public void setChave(Chave chave) {
		this.chave = chave;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}
	
	public List<InfoFevereiroDetalhado> getInformacoesTabela1(){
		List<InfoFevereiroDetalhado> resultado = new ArrayList<InfoFevereiroDetalhado>();
		for (InfoFevereiroDetalhado item : this.informacoes) {
			if(item.getColuna().name().equals("PROGRAMA") ||
					   item.getColuna().name().equals("ESFERA_GOVERNAMENTAL") ||
					   item.getColuna().name().equals("N_FAMILIAS_BENEFICIADAS") ||
					   item.getColuna().name().equals("VALOR_TOTAL_REPASSADO") ||
				       item.getColuna().name().equals("VALOR_MEDIO_BENEFICIO") )
			
				resultado.add(item);
			   
				
		}
		
		return resultado;
		
	}
	
	public List<InfoFevereiroDetalhado> getInformacoesTabela2(){
		List<InfoFevereiroDetalhado> resultado = new ArrayList<InfoFevereiroDetalhado>();
		for (InfoFevereiroDetalhado item : this.informacoes) {
			if(item.getColuna().name().equals("PROGRAMA") ||
					   item.getColuna().name().equals("ESFERA_GOVERNAMENTAL") ||
					   item.getColuna().name().equals("N_PESSOAS_BENEFICIADAS") ||
					   item.getColuna().name().equals("VALOR_TOTAL_REPASSADO"))
				resultado.add(item);
			   
				
		}
		
		return resultado;
		
	}
	
	public List<InfoFevereiroDetalhado> getInformacoesTabela3(){
		List<InfoFevereiroDetalhado> resultado = new ArrayList<InfoFevereiroDetalhado>();
		for (InfoFevereiroDetalhado item : this.informacoes) {
			if(item.getColuna().name().equals("PROGRAMA") ||
					   item.getColuna().name().equals("ESFERA_GOVERNAMENTAL") ||
					   item.getColuna().name().equals("VALOR_TOTAL_REPASSADO"))
				resultado.add(item);
				
			   
				
		}
		
		return resultado;
		
	}
	

	
	public List<InfoFevereiroDetalhado> getInformacoesTabela4(){
		List<InfoFevereiroDetalhado> resultado = new ArrayList<InfoFevereiroDetalhado>();
		for (InfoFevereiroDetalhado item : this.informacoes) {
			if(item.getColuna().name().equals("PROGRAMA") ||
					 item.getColuna().name().equals("N_DOMICILIOS_NO_CAD_UNICO"))
					
				resultado.add(item); 	 
					 
				
		}
		
		return resultado;
	
  }
	public List<InfoFevereiroDetalhado> getInformacoesTabela5(){
		List<InfoFevereiroDetalhado> resultado = new ArrayList<InfoFevereiroDetalhado>();
		for (InfoFevereiroDetalhado item : this.informacoes) {
			if(item.getColuna().name().equals("PROGRAMA") ||
					 item.getColuna().name().equals("N_DOMICILIOS_NO_CAD_UNICO"))
					
				resultado.add(item); 	 
					 
				
		}
		
		return resultado;
	
  }
		
}
	

