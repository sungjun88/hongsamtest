package com.hb.web;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hb.mybatis.DAO;
import com.hb.mybatis.VO;

@Controller
public class MyController {
	private DAO dao;

	public DAO getDao() {
		return dao;
	}

	public void setDao(DAO dao) {
		this.dao = dao;
	}
	
	@RequestMapping("/")
	public ModelAndView getList(){
		ModelAndView mv= new ModelAndView("list");
		List<VO> list = dao.getList();
		mv.addObject("list", list);
		return mv;
	}
	@RequestMapping("/onelist.do")
	public ModelAndView getOneList(VO vo){
		ModelAndView mv= new ModelAndView("onelist");
		VO onevo = dao.getOneList(vo.getName(), vo.getPwd());
		mv.addObject("vo", onevo);
		return mv;
	}

}
