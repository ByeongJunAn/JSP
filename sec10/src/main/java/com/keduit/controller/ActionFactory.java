package com.keduit.controller;

import com.keduit.controller.action.Action;
import com.keduit.controller.action.EmployeesCheckPassAction;
import com.keduit.controller.action.EmployeesListAction;
import com.keduit.controller.action.EmployeesPassFormAction;
import com.keduit.controller.action.EmployeesViewAction;
import com.keduit.controller.action.EmployeesWriteFormAction;
import com.keduit.controller.action.EmployeesWriteAction;

public class ActionFactory {
	private static ActionFactory instance = new ActionFactory();
	
	private ActionFactory(){
		super();
	}
	
	public static ActionFactory getInstance() {
		return instance;
	}
	
	public Action getAction(String command) {
		Action action = null;
		
		if(command.equals("employees_List")) {
			action = new EmployeesListAction();
		} else if(command.equals("employees_write_form")) {
		 	action = new EmployeesWriteFormAction();
		} else if(command.equals("employees_write")) {
			action = new EmployeesWriteAction();
		} else if(command.equals("employees_check_pass_form")) {
			action = new EmployeesPassFormAction();
		} else if(command.equals("employees_check_pass")) {
			action = new EmployeesCheckPassAction();
		}else if(command.equals("employees_view")) {
			action = new EmployeesViewAction();
		} 
		return action;
	}
}
