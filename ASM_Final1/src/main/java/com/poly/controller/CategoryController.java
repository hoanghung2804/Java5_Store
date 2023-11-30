package com.poly.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.dao.AccountDAO;
import com.poly.dao.CategoryDAO;
import com.poly.entity.Category;
import com.poly.service.SessionService;

//import antlr.collections.List;

@Controller
public class CategoryController {
	@Autowired
	CategoryDAO dao; // làm việc với bảng Categories
	@Autowired
	SessionService session;
	@Autowired
	AccountDAO accountDao;
	
	// hàm 1
	@RequestMapping("/category/index")
	public String index(Model model) {
//		Category item = new Category();
//		model.addAttribute("item", item);
//		List<Category> items = dao.findAll();
//		model.addAttribute("items", items);
//		return "category/index";
		//return "category/index2"; // giao dien dep
		
		String username = session.get("username");
		if (username==null) {
			return "redirect:/account/login";		}
	
		
		if (accountDao.findById(username).isPresent()) {
		Category item = new Category();
		model.addAttribute("item", item);
		List<Category> items = dao.findAll();
		model.addAttribute("items", items);
		
		//return "category/index2"; // giao dien dep
	}
		return "category/index";
	}
	
	// hàm 2
	@RequestMapping("/category/edit/{id}")
	public String edit(Model model, @PathVariable("id") String id) {
		Category item = dao.findById(id).get();
		model.addAttribute("item", item);
		List<Category> items = dao.findAll();
		model.addAttribute("items", items);
		return "category/index";
	}

	// hàm 3
	@RequestMapping("/category/create")
	public String create(Category item) {
		dao.save(item);
		return "redirect:/category/index";
	}

	// hàm 4
	@RequestMapping("/category/update")
	public String update(Category item) {
		dao.save(item);
		return "redirect:/category/edit/" + item.getId();
	}

	// hàm 5
	@RequestMapping("/category/delete/{id}")
	public String delete(@PathVariable("id") String id) {
		dao.deleteById(id);
		return "redirect:/category/index";
	}
	
	
}

