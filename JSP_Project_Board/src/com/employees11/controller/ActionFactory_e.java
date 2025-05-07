package com.employees11.controller;

public class ActionFactory_e {
	private static ActionFactory_e instance = new ActionFactory_e();
	
	private ActionFactory_e() {
		super();
	}
	
	public static ActionFactory_e getInstance() {
		return instance;
	}
}
