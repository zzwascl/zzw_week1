package com.bw.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bw.dao.MapperDao;
import com.bw.domain.Brand;
import com.bw.domain.Goods;
import com.bw.domain.Type;
import com.bw.service.GoodService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
@Service
public class GoodServiceImpl implements GoodService {
	@Autowired
	private MapperDao dao;

	@Override
	public PageInfo<Goods> list(Goods g, Integer pageNum, Integer pageSize) {
		// TODO Auto-generated method stub
		PageHelper.startPage(pageNum, pageSize);
		List<Goods> list=dao.list(g);		
		return new PageInfo<Goods>(list);
	}

	@Override
	public List<Type> type() {
		// TODO Auto-generated method stub
		return dao.type();
	}
	@Override
	public List<Brand> brand() {
		// TODO Auto-generated method stub
		return dao.brand();
	}

	@Override
	public void add(Goods g) {
		// TODO Auto-generated method stub
		 dao.add(g);
	}

	@Override
	public Goods good(Integer id) {
		// TODO Auto-generated method stub
		return dao.good(id);
	}

	@Override
	public void update(Goods g) {
		// TODO Auto-generated method stub
		dao.update(g);
	}

	@Override
	public void del(Integer id) {
		// TODO Auto-generated method stub
		dao.del(id);
	}

	@Override
	public void delall(String ids) {
		// TODO Auto-generated method stub
		dao.delall(ids);
	}



}
