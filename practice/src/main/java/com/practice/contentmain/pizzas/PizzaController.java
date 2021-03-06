package com.practice.contentmain.pizzas;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@RequestMapping("pizza")
@Controller

public class PizzaController {

	@Resource(name = "pizza_Service")
	private PizzaService pService;
	
	@RequestMapping("/pizzaPage")
	public String pizzaPage(Model model) {
		String type = "PIZZA";
		
		List<PizzaVO> list = pService.pizzaList(type);
		
		model.addAttribute("pizzaList", list);
		
		return "pizzaPage";
	}
	
	@RequestMapping("pizzaSubmit")
	public String brandSubmit() {
		
		return "insertPizza";
	}
	
	@RequestMapping("addPizza")
	public String addPizza(
							@RequestParam("name")String name,
							@RequestParam("type")String type,
							@RequestParam("path")String path) {
		
		PizzaVO vo = new PizzaVO();
		vo.setName(name);
		vo.setType(type);
		vo.setPath(path);
		
		pService.insertPizza(vo);
		
		return "redirect:pizzaPage";
	}

}
