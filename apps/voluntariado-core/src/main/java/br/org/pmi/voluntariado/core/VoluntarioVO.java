package br.org.pmi.voluntariado.core;

import com.vortice.core.abstracao.ValueObject;

public class VoluntarioVO extends ValueObject{

	private Integer				codigo;
	private String				nome;
	private String				email;
	private String				endereco;
	private String				bairro;
	private String				cep;
	private String				celular;
	private String				telefone;
	private Boolean				certificacaoPMI;
	private Boolean				associadoPMIBA;
	private Boolean				conhecePMBook;
	private Integer				horasDisponiveis;
	private String				resumoCurriculo;
	private NivelEscolaridadeE	nivelEscolaridade;
	
	public Integer getCodigo() {
		return codigo;
	}
	public void setCodigo(Integer codigo) {
		this.codigo = codigo;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getEndereco() {
		return endereco;
	}
	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}
	public String getBairro() {
		return bairro;
	}
	public void setBairro(String bairro) {
		this.bairro = bairro;
	}
	public String getCep() {
		return cep;
	}
	public void setCep(String cep) {
		this.cep = cep;
	}
	public String getCelular() {
		return celular;
	}
	public void setCelular(String celular) {
		this.celular = celular;
	}
	public String getTelefone() {
		return telefone;
	}
	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}
	public Boolean getCertificacaoPMI() {
		return certificacaoPMI;
	}
	public void setCertificacaoPMI(Boolean certificacaoPMI) {
		this.certificacaoPMI = certificacaoPMI;
	}
	public Boolean getAssociadoPMIBA() {
		return associadoPMIBA;
	}
	public void setAssociadoPMIBA(Boolean associadoPMIBA) {
		this.associadoPMIBA = associadoPMIBA;
	}
	public Integer getHorasDisponiveis() {
		return horasDisponiveis;
	}
	public void setHorasDisponiveis(Integer horasDisponiveis) {
		this.horasDisponiveis = horasDisponiveis;
	}
	public String getResumoCurriculo() {
		return resumoCurriculo;
	}
	public void setResumoCurriculo(String resumoCurriculo) {
		this.resumoCurriculo = resumoCurriculo;
	}
	public Boolean getConhecePMBook() {
		return conhecePMBook;
	}
	public void setConhecePMBook(Boolean conhecePMBook) {
		this.conhecePMBook = conhecePMBook;
	}
	public NivelEscolaridadeE getNivelEscolaridade() {
		return nivelEscolaridade;
	}
	public void setNivelEscolaridade(NivelEscolaridadeE nivelEscolaridade) {
		this.nivelEscolaridade = nivelEscolaridade;
	}
}