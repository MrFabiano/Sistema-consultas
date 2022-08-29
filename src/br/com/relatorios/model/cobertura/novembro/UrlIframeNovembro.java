package br.com.relatorios.model.cobertura.novembro;

public enum UrlIframeNovembro {
	
	FILLER(""), 
	NOVEMBRO_2017("https://docs.google.com/document/d/e/2PACX-1vSGS2FWn2DlkL8K6vCGFgPsRvj3B24kZvkdRjYb_TTtsGdYbbbJBLH-4fHaIMNXYxRp21JUF51_2RLJ/pub"), 
    NOVEMBRO_2016("https://docs.google.com/document/d/e/2PACX-1vRD1TccvMwOwZ8rWMDi49MjEDkr6Ujk2TOJcoFjvOAha76D79inUvRuW3bNtaP9QzOSeUmRu_-7zagy/pub"),
    NOVEMBRO_2015("https://docs.google.com/document/d/e/2PACX-1vRXYagXVdlSQOJDvN_8QUzVJpvQRvzVe7W72zYSfK7_RdPMJDgzsOR4t4opo-vwLM8Tt3qkVMgbhCrW/pub"),
    NOVEMBRO_2014("https://docs.google.com/document/d/e/2PACX-1vQ6H7qMPlSBw31MIiTNBUDl3a0LoUGutE6DRfbQWQzXIMyNCD5mt130s8Jt7aA1GWfkt4lK_BjwBYvR/pub"),
    NOVEMBRO_2013("https://docs.google.com/document/d/e/2PACX-1vQnRmYM0KAtX0-C2qZoZ3gjF36_nDGhBufhPIJICKukETgFQJ0OM5Yv7iYlajHNaC44XIHLcv9PPH7B/pub"),
    NOVEMBRO_2012("https://docs.google.com/document/d/e/2PACX-1vRQwifMiU296_f0wGR0fUJsGLWPEaBezhPITCB1aV2KAzv07D1NmBRwXiQxoNfm_HC_HB5lMVafH49n/pub"),
	NOVEMBRO_2018("");
	
	
	
	
	String descricao;

	private UrlIframeNovembro(String descricao) {
		this.descricao = descricao;
	}

	@Override
	public String toString() {
		return descricao;
	}
}
