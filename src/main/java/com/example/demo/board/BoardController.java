package com.example.demo.board;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BoardController {
	@Autowired
	private BoardService service;
	
	@RequestMapping("/board/list")
	public ModelAndView list() {
		ArrayList<Board> list = (ArrayList<Board>) service.getAllBoard();
		for(int i=0; i<list.size(); i++) {
			Board b = list.get(i);
			
		}
		ModelAndView mav = new ModelAndView("board/list");
		mav.addObject("list", list);
		return mav;
	}
	
	//@RequestMapping("/board/write")
}
