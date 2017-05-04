package com.bv.controller.action;
 
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
 
//@Namespace("/")
@Action(value = "login", results = {
        @Result(name = "SUCCESS", location = "/login-sucesso.jsp"),
        @Result(name = "ERROR", location = "/login-erro.jsp") })
public class LoginAction {
 
    public String execute() throws Exception {
        if(getUsuario().equals("bv") && getSenha().equals("bv"))
        	return "SUCCESS";
        else
        	return "ERROR";
    }
     
    // Java Bean para guardar os parametros do form
    private String usuario;
    private String senha;
    private String nome = "Bruno Vitalino";
    
    //@RequiredFieldValidator( message = "Campo obrigatorio" )
	public String getUsuario() {
		return usuario;
	}
	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}	
	//@IntRangeFieldValidator(message = "Idade minima de 18 anos", min = "18", max = "65")
}