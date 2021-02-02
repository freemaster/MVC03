package kr.iot.frontcontroller;

import java.util.HashMap;

import kr.iot.controller.*;

public class HandlerMapping {
	private HashMap<String, Controller> mappings;
	
	public HandlerMapping() {
		mappings = new HashMap<String, Controller>();
		setKeyValue();
	}
	
	public void setKeyValue() {
		//xml, properties 파일을 통해서도 연결
		mappings.put("/list.do", new MemListController());
		mappings.put("/insertForm.do", new MemInsertFormController());
		mappings.put("/insert.do", new MemInsertController());
		mappings.put("/delete.do", new MemDeleteController());
		mappings.put("/content.do", new MemContentColtroller());
		mappings.put("/update.do", new MemUpdateController());
		
		/*
		if(command.equals("/list.do")) {
			controller = new MemListController();
		} else if(command.equals("/insertForm.do")) {
			controller = new MemInsertFormController();
		} else if(command.equals("/insert.do")) {
			controller = new MemInsertController();
		} else if(command.equals("/delete.do")) {
			controller = new MemDeleteController();
		} else if(command.equals("/content.do")) {
			controller = new MemContentColtroller();
		} else if(command.equals("/update.do")) {
			controller = new MemUpdateController();
		}
		*/
	}
	
	public Controller getController(String key) {
		return mappings.get(key);
	}
}
