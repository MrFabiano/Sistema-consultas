package br.com.relatorios.model.cobertura.marco;

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
import br.com.relatorios.model.cobertura.marco.InfoMarcoDetalhado;
import br.com.relatorios.model.coberturas.Chave;


@Entity
public class MesMarco implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@Column(length = 50, nullable = false, unique = true)
	private String descricao;
	@OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
	private List<InfoMarcoDetalhado> informacoes;
	private String titulo;
	
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

	public List<InfoMarcoDetalhado> getInformacoes() {
		return informacoes;
	}

	public void setInformacoes(List<InfoMarcoDetalhado> informacoes) {
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
	
	public List<InfoMarcoDetalhado> getInformacoesTabela1(){
		List<InfoMarcoDetalhado> resultado = new ArrayList<InfoMarcoDetalhado>();
		for (InfoMarcoDetalhado item : this.informacoes) {
			if(item.getColuna().name().equals("PROGRAMA") ||
					   item.getColuna().name().equals("ESFERA_GOVERNAMENTAL") ||
					   item.getColuna().name().equals("N_FAMILIAS_BENEFICIADAS") ||
					   item.getColuna().name().equals("VALOR_TOTAL_REPASSADO") ||
				       item.getColuna().name().equals("VALOR_MEDIO_BENEFICIO") )
				
				resultado.add(item);
			   
				
		}
		
		return resultado;
		
	}
	
	public List<InfoMarcoDetalhado> getInformacoesTabela2(){
		List<InfoMarcoDetalhado> resultado = new ArrayList<InfoMarcoDetalhado>();
		for (InfoMarcoDetalhado item : this.informacoes) {
			if(item.getColuna().name().equals("PROGRAMA") ||
					   item.getColuna().name().equals("ESFERA_GOVERNAMENTAL") ||
					   item.getColuna().name().equals("N_PESSOAS_BENEFICIADAS") ||
					   item.getColuna().name().equals("VALOR_TOTAL_REPASSADO"))
				resultado.add(item);
			   
				
		}
		
		return resultado;
		
	}
	
	public List<InfoMarcoDetalhado> getInformacoesTabela3(){
		List<InfoMarcoDetalhado> resultado = new ArrayList<InfoMarcoDetalhado>();
		for (InfoMarcoDetalhado item : this.informacoes) {
			if(item.getColuna().name().equals("PROGRAMA") ||
					   item.getColuna().name().equals("ESFERA_GOVERNAMENTAL") ||
					   item.getColuna().name().equals("VALOR_TOTAL_REPASSADO"))
				resultado.add(item);
				
			   
				
		}
		
		return resultado;
		
	}

	
	public List<InfoMarcoDetalhado> getInformacoesTabela4(){
		List<InfoMarcoDetalhado> resultado = new ArrayList<InfoMarcoDetalhado>();
		for (InfoMarcoDetalhado item : this.informacoes) {
			if(item.getColuna().name().equals("PROGRAMA") ||
					 item.getColuna().name().equals("N_DOMICILIOS_NO_CAD_UNICO"))
					  System.out.println("teste1");
				resultado.add(item); 	 
				 System.out.println("teste");
				
		}
		
		return resultado;
	
  }
	
	public List<InfoMarcoDetalhado> getInformacoesTabela5(){
		List<InfoMarcoDetalhado> resultado = new ArrayList<InfoMarcoDetalhado>();
		for (InfoMarcoDetalhado item : this.informacoes) {
			if(item.getColuna().name().equals("PROGRAMA") ||
					 item.getColuna().name().equals("N_DOMICILIOS_NO_CAD_UNICO"))
					  System.out.println("teste1");
				resultado.add(item); 	 
				 System.out.println("teste");
				
		}
		
		return resultado;
	
  }



}
	

	