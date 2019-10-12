package com.practice.test;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author sanghoyun
 *
 */
@RequestMapping("test")
@Controller
public class TestController 
{

	
	@Resource(name = "testDao")
	private TestDao tDao;
	
	@RequestMapping("/test")
	public String testPage(Model model)
	{	
		List<TestVO> list = tDao.selectList();
		
		System.out.println("test :: " + list.size());
		System.out.println("test :: " + list.size());
		System.out.println("test :: " + list.size());
		System.out.println("test :: " + list.size());
		System.out.println("test :: " + list.size());
		System.out.println("test :: " + list.size());
		System.out.println("test :: " + list.size());
		
		List<TestVO> list2 = tDao.selectList2();
		
		for(int i = 0; i<list2.size(); i++) 
		{
			System.out.println("SSS" + list2.get(i).getName());
		}
		
		model.addAttribute("name", list2);
		
		
		
		
		
		return "helloTiles";
	}
}
