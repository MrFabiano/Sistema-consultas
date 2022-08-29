package br.com.relatorios.model.cobertura.julho;

public enum UrlIframeJulho {

	FILLER(""),
	JULHO_2017("https://docs.google.com/document/d/e/2PACX-1vR2gy1t61_0l9wKgQYzxbaYShETfNFetPs23sYhEK6eELjOO4YZWipIVBqoaQntKpNL8B_mygCwCpCi/pub"), 
    JULHO_2016("https://docs.google.com/document/d/e/2PACX-1vTvA_ZDzIDVB3vwlDpERWl31-JZ0T5SIKUzk4o6osjPrAoPhZiWfr2mRY_AOZzIz0zypZbpohvuXSHg/pub"),
    JULHO_2015("https://docs.google.com/document/d/e/2PACX-1vTw7IZJCHkmkqixz0QuIWa_KOCJziwwTNyAPIYCpvoWM_-fbf63J8afw_K9X0N0YxcJxzgOVyE5jfJC/pub"),
    JULHO_2014("https://docs.google.com/document/d/e/2PACX-1vQCm2o2ifVsybVnzAc0t6oEnDzaNh6k3mBPFEhj5CXUn0giII8wT44iQw9oiaomCQ3sOuGb0gNH0IDX/pub"),
    JULHO_2013("https://docs.google.com/document/d/e/2PACX-1vSO8M4Z9ohQS-sKgTFwc6o5Edn1CBNly50oICn0ZHwfCo2Yiaok3aBZwOda9BaldFLMpCUsH0fLIPXG/pub"),
    JULHO_2012("https://docs.google.com/document/d/e/2PACX-1vRrQZZUmyjt4O0VuuVphZ7zf1O2uD-MUH0a99h0Kjrvl88kn4u6temi4uyW26Ahbz65WRQ3yueyC22W/pub"),
	JULHO_2018("");
	
	
	
	
	String descricao;

	private UrlIframeJulho(String descricao) {
		this.descricao = descricao;
	}

	@Override
	public String toString() {
		return descricao;
	}
}


