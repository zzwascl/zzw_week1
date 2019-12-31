package com.bw.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.bw.domain.Brand;
import com.bw.domain.Goods;
import com.bw.domain.Type;

public interface MapperDao {

	List<Goods> list(Goods g);

	@Select("select * from type")
	List<Type> type();
	@Select("select * from brand")
	List<Brand> brand();

	void add(Goods g);

	@Select("select * from goods where id=#{id}")
	Goods good(@Param("id")Integer id);

	@Update("update goods set cname=#{cname},price=#{price},pic=#{pic} where id=#{id}")
	void update(Goods g);

	@Delete("delete from goods where id=#{id}")
	void del(@Param("id")Integer id);

	@Delete("delete from goods where id in(${value})")
	void delall(String ids);

}
