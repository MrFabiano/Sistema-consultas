package br.com.relatorios.model.cobertura.fevereiro;

public enum ColunasFevereiro {
	
	PROGRAMA("Programa"), ESFERA_GOVERNAMENTAL("Esfera Governamental"), N_FAMILIAS_BENEFICIADAS("N� Familias Beneficiadas"),
	VALOR_TOTAL_REPASSADO("Valor Total Repassado"), VALOR_MEDIO_BENEFICIO("Valor M�dio Beneficio"),
	N_DOMICILIOS_NO_CAD_UNICO("Numero de Domicilios no CAD�nico"); 

	private String descricao;

	private ColunasFevereiro(String descricao) {
		this.descricao = descricao;
	}

	@Override
	public String toString() {
		return descricao;
	}
}


