package com.bv.controller.action;

import java.util.ArrayList;
import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;

import com.bv.model.Artigo;

//@Namespace(value = "/artigo")
@Action(value = "inicializar", results =
		@Result(name = "ok", location = "/listarArtigos.jsp"))
public class ArtigoAction
{
	private List<Artigo> artigos;
    private Artigo artigo;
 
    public ArtigoAction() {
    	
    }
    
    @Action(value = "novo",	results =
    		@Result(name = "ok", location = "/adicionarArtigo.jsp"))
    public String novo()
    {
        return "ok";
    }
 
    @Action(value = "adicionar", results =
    		@Result(name = "ok", type = "redirectAction", params = {"actionName", "listar" }))    
    public String adicionar()
    {
    	return "ok";
    }

    @Action(value = "listar", results = @Result(name = "ok", location = "/listarArtigos.jsp"))
    public String listar() {
    	artigos = new ArrayList<Artigo>();

    	artigos.add(new Artigo(1, "Copo", "5 reais"));
    	artigos.add(new Artigo(2, "Prato", "2 reais"));
    	
        return "ok";
    }
    
    // Usaremos esse metodo padrao para inicializar nosso array
    public String execute() {
    	return "ok";
    }
    
    public List getArtigos() {
        return artigos;
    } 
    
}
