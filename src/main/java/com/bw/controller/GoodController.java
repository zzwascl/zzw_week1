package com.bw.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.alibaba.druid.stat.TableStat.Mode;
import com.bw.domain.Brand;
import com.bw.domain.Goods;
import com.bw.domain.Type;
import com.bw.service.GoodService;
import com.github.pagehelper.PageInfo;

@Controller
public class GoodController {
	@Autowired
	private GoodService service;
	
	@RequestMapping("list")
	public String list(Model m,Goods g,@RequestParam(defaultValue="1")Integer pageNum,@RequestParam(defaultValue="3")Integer pageSize) {
		
	PageInfo<Goods> pageInfo=service.list(g,pageNum,pageSize);
	m.addAttribute("pg",pageInfo);
	m.addAttribute("g",g);
	return "list";		
	}
	
	@RequestMapping("toadd")
	public String toadd() {
		return "add";
	}

	@RequestMapping("type")
	@ResponseBody
	public List<Type> type(){
		List<Type> list=service.type();
		System.out.println(list);
		return list;
	}
	@RequestMapping("brand")
	@ResponseBody
	public List<Brand> brand(){
		return service.brand();
	}
	
	@RequestMapping("add")
	public String add(Goods g,@RequestParam("f")MultipartFile file,Model m) throws IllegalStateException, IOException {
		if(file!=null&& !file.isEmpty()) {
			String path="D:/pic/";
			File file2 = new File(path+file.getOriginalFilename());
			file.transferTo(file2);
			g.setPic(file.getOriginalFilename());			
		}
		service.add(g);
		m.addAttribute("msg","添加成功");
		return "nav";		
	}
	
	@RequestMapping("good")
	public String good(Integer id,Model m) {
		Goods g=service.good(id);
		m.addAttribute("g",g);
		return "good";
		}
	@RequestMapping("toupdate")
	public String toupdate(Integer id,Model m) {
		Goods g=service.good(id);
		m.addAttribute("g",g);
		return "update";
		}
	
	@RequestMapping("update")
	public String update(Goods g,@RequestParam("f")MultipartFile file,Model m) throws IllegalStateException, IOException {
		if(file!=null&& !file.isEmpty()) {
			String path="D:/pic/";
			File file2 = new File(path+file.getOriginalFilename());
			file.transferTo(file2);
			g.setPic(file.getOriginalFilename());			
		}
		service.update(g);
		m.addAttribute("msg","修改成功");
		return "nav";		
	}
	
	@RequestMapping("del")
	public String del(Integer id,Model m) {
		service.del(id);
		m.addAttribute("msg","删除成功");
		return "nav";
	}
	
	@RequestMapping("delall")
	public String delall(String ids,Model m) {
		service.delall(ids);
		m.addAttribute("msg","删除成功");
		return "nav";
	}
	
	
	
	
	
	
}
