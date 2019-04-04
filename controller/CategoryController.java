package com.ecomm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ecomm.Model.Category;
import com.ecomm.dao.CategoryDAO;

public class CategoryController {


	@Autowired
	CategoryDAO categoryDAO;
	
	@RequestMapping("/category")
	public String showCategory(Model m)
	{
		List<Category> listCategories=categoryDAO.listcategories();
		m.addAttribute("categories",listCategories);
		return "Category";
	}
	
	@RequestMapping(value="/InsertCategory",method=RequestMethod.POST)
	public String insertCategory(@RequestParam("catName")String categoryName,@RequestParam("catDesc")String categoryDesc,Model m)
	{
		Category category=new Category();
		category.setCategoryName(categoryName);
		category.setCategorydesc(categoryDesc);
		
		categoryDAO.addcategory(category);
		
		List<Category> listCategories=categoryDAO.listcategories();
		m.addAttribute("categories",listCategories);
		return "Category";
	}
	
	@RequestMapping(value="/deleteCategory/{categoryId}")
	public String deleteCategory(@PathVariable("categoryId")int categoryId,Model m)
	{
		Category category=categoryDAO.getcategory(categoryId);
		categoryDAO.deletecategory(category);
		
		List<Category> listCategories=categoryDAO.listcategories();
		m.addAttribute("categories",listCategories);
		
		return "Category";
	}
	@RequestMapping(value="/editcategory/{category}")
	public String editCategory(@PathVariable("categoryId")int categoryId,Model m)
	{
		Category category=categoryDAO.getcategory(categoryId);
		m.addAttribute("mycategory",category);
		return "updatecategory";
		
	}
	
}
