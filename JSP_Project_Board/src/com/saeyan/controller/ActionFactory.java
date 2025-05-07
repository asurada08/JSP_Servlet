package com.saeyan.controller;

import com.saeyan.controller.action.Action;
import com.saeyan.controller.action.BoardCheckPassAction;
import com.saeyan.controller.action.BoardCheckPassFormAction;
import com.saeyan.controller.action.BoardDeleteAction;
import com.saeyan.controller.action.BoardListAction;
import com.saeyan.controller.action.BoardUpdateAction;
import com.saeyan.controller.action.BoardUpdateFormAction;
import com.saeyan.controller.action.BoardViewAction;
import com.saeyan.controller.action.BoardWriteAction;
import com.saeyan.controller.action.BoardWriteFormAction;

public class ActionFactory {//프론트 컨트롤러 (frontController==dispacherServlet) 역할 / 싱글톤패턴
	private static ActionFactory instance = new ActionFactory();
	
	private ActionFactory() {
		super();
	}
	
	public static ActionFactory getInstance() {
		return instance;
	}
	
	public Action getAction(String command) {//다형성
		Action action = null;//초기화
		System.out.println("ActionFactory : " + command);
		if (command.equals("board_list")) {
			action = new BoardListAction();//7
		} else if (command.equals("board_write_form")) {
			action = new BoardWriteFormAction();//12
		} else if (command.equals("board_write")) {
			action = new BoardWriteAction();//11
		} else if (command.equals("board_view")) {
			action = new BoardViewAction();//10
		} else if (command.equals("board_check_pass_form")) {
			action = new BoardCheckPassFormAction();//5
		} else if (command.equals("board_check_pass")) {
			action = new BoardCheckPassAction();//4
		} else if (command.equals("board_update_form")) {
			action = new BoardUpdateFormAction();//9
		} else if (command.equals("board_update")) {
			action = new BoardUpdateAction();//8
		} else if (command.equals("board_delete")) {
			action = new BoardDeleteAction();//6
		}
		return action;
	}
}
