package br.com.relatorios.model.cobertura.janeiro;

public enum ColunasJaneiro {
	
	PROGRAMA("Programa"), ESFERA_GOVERNAMENTAL("Esfera Governamental"), N_FAMILIAS_BENEFICIADAS("N� Familias Beneficiadas"),
	VALOR_TOTAL_REPASSADO("Valor Total Repassado"), VALOR_MEDIO_BENEFICIO("Valor M�dio Beneficio"),
	N_DOMICILIOS_NO_CAD_UNICO("N�mero de Domicilios no CAD�nico"), N_FAMILIAS_NO_CAD_UNICO("N�mero de Fam�lias no CAD�nico"); 
	
	

	private String descricao;

	private ColunasJaneiro(String descricao) {
		this.descricao = descricao;
	}

	@Override
	public String toString() { 
		return descricao;
	}

	
}


