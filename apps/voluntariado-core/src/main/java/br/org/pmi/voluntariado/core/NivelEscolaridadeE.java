package br.org.pmi.voluntariado.core;

public enum NivelEscolaridadeE {

	PRIMEIRO_GRAU(1), SEGUNDO_GRAU(2), FORMADO(3), POS_GRADUADO(4), MESTRADO(5), DOUTORADO(6);

	private Integer	codigo;
	private String	descricao;
	
	private NivelEscolaridadeE(Integer nivelEscolaridade){
		codigo = nivelEscolaridade;
		switch(codigo){
			case 1:
				descricao = "Prímeiro Grau";
			case 2:
				descricao = "Segundo Grau";
			case 3:
				descricao = "Formado";
			case 4:
				descricao = "Pós Graduado";
			case 5:
				descricao = "Mestrado";
			case 6:
				descricao = "Doutorado";
			break;
		}
	}

	public NivelEscolaridadeE getNivelEscolaridadeByCodigo(Integer aCodigo){
		switch(aCodigo){
			case 1:
				return PRIMEIRO_GRAU;
			case 2:
				return SEGUNDO_GRAU;
			case 3:
				return FORMADO;
			case 4:
				return POS_GRADUADO;
			case 5:
				return MESTRADO;
			case 6:
				return DOUTORADO;
			default: return null;
		}
	}
	
	public Integer getCodigo() {
		return codigo;
	}
	public String getDescricao() {
		return descricao;
	}	
}