package br.com.relatorios.model.cobertura.janeiro;

public enum UrlIframeJaneiro {
	
	FILLER(""), 
	            
	            JANEIRO_2017("https://docs.google.com/document/d/e/2PACX-1vTc0SQOGkVLNnZV0QoaIhCfXwDpvrZes7chCQvLPW7IYlRHcDuAM8eACmSufI9I9cS3bNIagxSoU11I/pub"), 
	            JANEIRO_2016("https://docs.google.com/document/d/e/2PACX-1vQFPSgGOHyz5xCuhLfnpDxVdXt5rmiJtXrmgczOTI51SpC0ftQMpCaljYN8tEYLTfJfmLtHuyY1Vd3K/pub"),
	            JANEIRO_2015("https://docs.google.com/document/d/e/2PACX-1vRlEUkwgwRvbCVV_UALStlUJbbV8PWsfq-ym9cDu82-455V0ChXwfBdwMk4OwMRRsKccTFU9DVIYP1t/pub"),
	            JANEIRO_2014("https://docs.google.com/document/d/e/2PACX-1vSvd2focjbeMTctWu3xsFnZq2Ch2roQ4Yzpf4_jPE1SnZv7XJcEk1cU0JtXfmpuCMzVpU7k9_YB10_J/pub"),
	            JANEIRO_2013("https://docs.google.com/document/d/e/2PACX-1vTwukaPssrvbERidBQqJCqqmavT8QasjzfJ_NLjUepczScedptfIhu7P-H2wBD63yNX9pjTG0qmvXTT/pub"),
	            JANEIRO_2012("https://docs.google.com/document/d/e/2PACX-1vQ9KxDznQmeIdD47RNRaSnvRSeXgl9b5DyaAQiChG0iDnbU2WL_j8AfGqP8Co5eosq6DWcXwWG2QVYt/pub"),
	            JANEIRO_2018("https://docs.google.com/document/d/e/2PACX-1vTiejsQXeVKyXoUoq7dqDzkxbtOD4R6egLh-zQ2g4_SNwSmQ6rNeSIFJ04_inowfTsTbAXML7yoLz7o/pub");
	            
			
	

	String descricao;

	private UrlIframeJaneiro(String descricao) {
		this.descricao = descricao;
	}

	@Override
	public String toString() {
		return descricao;
	}
}

