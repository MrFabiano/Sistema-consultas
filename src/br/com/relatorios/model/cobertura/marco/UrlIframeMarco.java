package br.com.relatorios.model.cobertura.marco;

public enum UrlIframeMarco {

	FILLER(""),  
	MARCO_2017("https://docs.google.com/document/d/e/2PACX-1vQMRzKyhI9OAUVlBc26SGz8zkL9Lq89xUrR0DkiUFVTyFU1myj6rRARXiG6bBLsZ2hDoBDr345Yn0mr/pub"), 
    MARCO_2016("https://docs.google.com/document/d/e/2PACX-1vTencE31aQyoqtTlA1Qowez0Xdd68ds04EzR9c9ffLiZvxewwgocpGRh3REo4QrxqOWSov-DSF7LVGH/pub"),
    MARCO_2015("https://docs.google.com/document/d/e/2PACX-1vRobQ40jIO2C68W-Kjl1V6k27Hc-9pulvtGQ8WBURNJFuvQSwxARB3aEeHuonPzy1RFhhqx9YscAeT5/pub"),
    MARCO_2014("https://docs.google.com/document/d/e/2PACX-1vTJj9WXSE9tfpm8giBIhAtaE3J9JpBV4tCpnSVILRU9gO2cbhxQ_isRhz5WgmRFyKcJCYX6ucBK9Pdg/pub"),
    MARCO_2013("https://docs.google.com/document/d/e/2PACX-1vRW0jOKK9u8v9hQba2_5kC4kYcsHsLQwdkJDZKFbyqOBGjaEiOSf7daNtUTsqq04csJm2tV8SamFBn3/pub"),
    MARCO_2012("https://docs.google.com/document/d/e/2PACX-1vQ8SpsSUJQbe13lf7OVx4JqVnN6ANGpgAQJjgTqQZNzsehDEamp_iXF6CAKF1M7i3p9SfemcquSkPhQ/pub"),
	MARCO_2018("");
	
	
	
	
	String descricao;

	private UrlIframeMarco(String descricao) {
		this.descricao = descricao;
	}

	@Override
	public String toString() {
		return descricao;
	}
}

