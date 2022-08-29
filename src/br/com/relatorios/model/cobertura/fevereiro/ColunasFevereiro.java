package br.com.relatorios.model.cobertura.fevereiro;

public enum ColunasFevereiro {
	
	PROGRAMA("Programa"), ESFERA_GOVERNAMENTAL("Esfera Governamental"), N_FAMILIAS_BENEFICIADAS("Nº Familias Beneficiadas"),
	VALOR_TOTAL_REPASSADO("Valor Total Repassado"), VALOR_MEDIO_BENEFICIO("Valor Médio Beneficio"),
	N_DOMICILIOS_NO_CAD_UNICO("Numero de Domicilios no CADÚnico"); 

	private String descricao;

	private ColunasFevereiro(String descricao) {
		this.descricao = descricao;
	}

	@Override
	public String toString() {
		return descricao;
	}
}


