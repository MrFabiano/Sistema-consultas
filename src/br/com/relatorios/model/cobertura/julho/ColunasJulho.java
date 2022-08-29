package br.com.relatorios.model.cobertura.julho;

public enum ColunasJulho {
	PROGRAMA("Programa"), ESFERA_GOVERNAMENTAL("Esfera Governamental"), N_FAMILIAS_BENEFICIADAS("Nº Familias Beneficiadas"),
	VALOR_MEDIO_BENEFICIO("Valor Médio Beneficio"),  VALOR_TOTAL_REPASSADO("Valor Total Repassado"), N_PESSOAS_BENEFICIADAS("N°_PESSOAS_BENEFICIADAS"), 
	N_DOMICILIOS_NO_CAD_UNICO("Numero de Domicilios no CADÚnico"); 

	private String descricao;

	private ColunasJulho(String descricao) {
		this.descricao = descricao;
	}

	@Override
	public String toString() {
		return descricao;
	}
}
