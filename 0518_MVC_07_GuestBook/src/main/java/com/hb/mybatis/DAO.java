package com.hb.mybatis;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class DAO {
	private SqlSessionTemplate template;

	public SqlSessionTemplate getTemplate() {
		return template;
	}

	public void setTemplate(SqlSessionTemplate template) {
		this.template = template;
	}
	
	
	public List<VO> getList(){
		return template.selectList("list");
	}
	
	public void getInsert(VO vo){
		template.insert("insert",vo);
	}
	
	public VO getOneList(String id, String pwd){
		Map<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("pwd", pwd);
		return template.selectOne("onelist", map);
	}
	
	public int getDelete(String id,String pwd){
		Map<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("pwd", pwd);
		return template.delete("delete", map);
	}
}













