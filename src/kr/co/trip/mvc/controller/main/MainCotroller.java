package kr.co.trip.mvc.controller.main;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

// admin 페이지를 제작해야하기때문에 제어권을 뺏음
@Controller 
public class MainCotroller {
	
	@RequestMapping(value = {"/", "/main"}, method = RequestMethod.GET)
	public String mainPage(Model model) {
		return "main/index";
	}

}
