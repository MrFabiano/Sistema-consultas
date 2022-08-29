package br.com.relatorios.model.cobertura.fevereiro;

public enum UrlIframeFevereiro {
	FILLER(""),  
	FEVEREIRO_2017("https://docs.google.com/document/d/e/2PACX-1vTWT6dTO-kSj0Mwzikgu8ORnnFDoR3lB10OK7O4zWQCojhfrv6_7N0SPbwmZslCpCiJ28pBKWiuKazQ/pub"), 
    FEVEREIRO_2016("https://docs.google.com/document/d/e/2PACX-1vRRSJcLge6Av-ZIufmvcPttDtKPrLH-Mqws5XuvqSXgLC0qtkU-cRtjzET8mhphPlwa5IEwromMDzBj/pub"),
    FEVEREIRO_2015("https://docs.google.com/document/d/e/2PACX-1vT3Xw2hE9wQylma7mUBDO1hnoDyMToMyGCmK_i_J4S4QhipFS4uRq_x5DRwYcVPgMY-UiGjO5J5Y_f9/pub"),
    FEVEREIRO_2014("https://docs.google.com/document/d/e/2PACX-1vSgxLGFiAHa_5OWPCYK2h8NlF1bSK2d1eR-2ogAGfH8Ft5A4yma15mi4FxyyVo-Zv9oC6ATKIxU9q8m/pub"),
    FEVEREIRO_2013("https://docs.google.com/document/d/e/2PACX-1vTDygeByl9uud_ZlMpB7WpvOHlozBdafvvI12bRo6LeH7AvhRM06OWqAqg9NdUsPTOmQUfbeXug7Bpa/pub"),
    FEVEREIRO_2012("https://docs.google.com/document/d/e/2PACX-1vQHx0br-ye4qR1obxtYt4_g274-yggEkTzh7iQTe3RlCj-tPnDcCM7TWQzEFM3RofsbhKR_Lm3iv470/pub"),
	FEVEREIRO_2018("https://docs.google.com/document/d/e/2PACX-1vSJ0qACvloe8mg44tZYF99pXpQl5G-TarOhDF571Z2P5qgRTl-ITsb6X0uj1krT5l8-k4oTqe2DPv98/pub");
	
	
	
	
	String descricao;

	private UrlIframeFevereiro(String descricao) {
		this.descricao = descricao;
	}

	@Override
	public String toString() {
		return descricao;
	}
}


