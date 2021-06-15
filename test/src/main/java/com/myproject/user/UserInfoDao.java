package com.myproject.user;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserInfoDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<UserInfoDto> getUserInfo() {
		return sqlSession.selectList("userInfo.getUserInfo");
	}
}
