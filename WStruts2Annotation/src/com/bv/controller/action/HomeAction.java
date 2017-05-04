package com.bv.controller.action;
 
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Actions;
import org.apache.struts2.convention.annotation.Result;
 
import com.opensymphony.xwork2.ActionSupport;
 
/**
 * Uma classe vazia para a implementacao default da Action para:
 * 
 *  <action name="home">
 *      <result>/login.jsp</result>
 *  </action>
 * A classe HomeAction sera automaticamente mapeada para home.action
 * A pagina default eh login.jsp que sera servida para o cliente
 *
 */
 
//@Namespace("/")
@Actions(value = {
		@Action(""),
		@Action("home") })
@Result(location="/login.jsp")
public class HomeAction extends ActionSupport {
}