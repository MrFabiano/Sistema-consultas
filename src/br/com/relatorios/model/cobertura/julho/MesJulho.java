package br.com.relatorios.model.cobertura.julho;


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
import br.com.relatorios.model.cobertura.julho.InfoJulhoDetalhado;
import br.com.relatorios.model.coberturas.Chave;

@Entity
public class MesJulho {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@Column(length = 50, nullable = false, unique = true)
	private String descricao;
    //private NivelDeCoberturas nivelCoberturas;
	@OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
	private List<InfoJulhoDetalhado> informacoes;
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

	public List<InfoJulhoDetalhado> getInformacoes() {
		return informacoes;
	}

	public void setInformacoes(List<InfoJulhoDetalhado> informacoes) {
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
	public List<InfoJulhoDetalhado> getInformacoesTabela1(){
		List<InfoJulhoDetalhado> resultado = new ArrayList<InfoJulhoDetalhado>();
		for (InfoJulhoDetalhado item : this.informacoes) {
			if(item.getColuna().name().equals("PROGRAMA") ||
					   item.getColuna().name().equals("ESFERA_GOVERNAMENTAL") ||
					   item.getColuna().name().equals("N_FAMILIAS_BENEFICIADAS") ||
					   item.getColuna().name().equals("VALOR_TOTAL_REPASSADO") ||
				       item.getColuna().name().equals("VALOR_MEDIO_BENEFICIO") )
			
				resultado.add(item);
			   
				
		}
		
		return resultado;
		
	}
 
	
	public List<InfoJulhoDetalhado> getInformacoesTabela4(){
		List<InfoJulhoDetalhado> resultado = new ArrayList<InfoJulhoDetalhado>();
		for (InfoJulhoDetalhado item : this.informacoes) {
			if(item.getColuna().name().equals("PROGRAMA") ||
					 item.getColuna().name().equals("N_DOMICILIOS_NO_CAD_UNICO"))
					  System.out.println("teste1");
				resultado.add(item); 	 
				 System.out.println("teste");
		}
		
		return resultado;
	
  } 
	
	public List<InfoJulhoDetalhado> getInformacoesTabela5(){
		List<InfoJulhoDetalhado> resultado = new ArrayList<InfoJulhoDetalhado>();
		for (InfoJulhoDetalhado item : this.informacoes) {
			if(item.getColuna().name().equals("PROGRAMA") ||
					 item.getColuna().name().equals("N_DOMICILIOS_NO_CAD_UNICO"))
					  System.out.println("teste1");
				resultado.add(item); 	 
				 System.out.println("teste");
		}
		
		return resultado;
	
  } 
	


}

	