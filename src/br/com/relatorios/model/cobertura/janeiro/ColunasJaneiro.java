package br.com.relatorios.model.cobertura.janeiro;

public enum ColunasJaneiro {
	
	PROGRAMA("Programa"), ESFERA_GOVERNAMENTAL("Esfera Governamental"), N_FAMILIAS_BENEFICIADAS("Nº Familias Beneficiadas"),
	VALOR_TOTAL_REPASSADO("Valor Total Repassado"), VALOR_MEDIO_BENEFICIO("Valor Médio Beneficio"),
	N_DOMICILIOS_NO_CAD_UNICO("Número de Domicilios no CADÚnico"), N_FAMILIAS_NO_CAD_UNICO("Número de Famílias no CADÚnico"); 
	
	

	private String descricao;

	private ColunasJaneiro(String descricao) {
		this.descricao = descricao;
	}

	@Override
	public String toString() { 
		return descricao;
	}

	
}


