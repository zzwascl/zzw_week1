package com.bw.service;

import java.util.List;

import com.bw.domain.Brand;
import com.bw.domain.Goods;
import com.bw.domain.Type;
import com.github.pagehelper.PageInfo;

public interface GoodService {

	PageInfo<Goods> list(Goods g, Integer pageNum, Integer pageSize);

	List<Type> type();

	List<Brand> brand();

	void add(Goods g);

	Goods good(Integer id);

	void update(Goods g);

	void del(Integer id);

	void delall(String ids);



}
