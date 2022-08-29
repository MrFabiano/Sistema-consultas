package br.com.relatorios.model.cobertura.novembro;

public enum ColunasNovembro {
	PROGRAMA("Programa"), ESFERA_GOVERNAMENTAL("Esfera Governamental"), N_FAMILIAS_BENEFICIADAS("N� Familias Beneficiadas"),
	VALOR_MEDIO_BENEFICIO("Valor M�dio Beneficio"),  VALOR_TOTAL_REPASSADO("Valor Total Repassado"), N_PESSOAS_BENEFICIADAS("N�_PESSOAS_BENEFICIADAS"), 
	N_DOMICILIOS_NO_CAD_UNICO("Numero de Domicilios no CAD�nico"); 

	private String descricao;

	private ColunasNovembro(String descricao) {
		this.descricao = descricao;
	}

	@Override
	public String toString() {
		return descricao;
	}
}
