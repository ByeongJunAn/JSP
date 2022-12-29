package com.keduit.controller;

import com.keduit.controller.action.Action;
import com.keduit.controller.action.EmployeesListAction;
import com.keduit.controller.action.EmployeesWriteFormAction;
import com.keduit.controller.action.employeesWriteAction;

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
			action = new employeesWriteAction();
		}
		return action;
	}
}
