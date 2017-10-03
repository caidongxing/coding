package com.renjun.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.renjun.dao.UserMapper;
import com.renjun.po.User;
import com.renjun.service.UserService;

  @Transactional
  @Service(value="userService")
public class UserServiceImpl implements UserService{

	  @Autowired
	  private UserMapper userMapper;	
	
	@Override
	public com.renjun.vo.User getUserByName(String username, String password) {
		// TODO Auto-generated method stub
		return this.userMapper.getUserByName(username, password);
	}
	@Override
	public com.renjun.vo.User getName(String username) {
		// TODO Auto-generated method stub
		return this.userMapper.getName(username);
	}
	@Override
	public List<com.renjun.vo.User> selectUserByQuartersTypeId(int quarterstypeid) {
		// TODO Auto-generated method stub
		return this.userMapper.selectUserByQuartersTypeId(quarterstypeid);
	}
	@Override
	public List<com.renjun.vo.User> selectUser(int pageStart, int pageSize) {
		// TODO Auto-generated method stub
		return this.userMapper.selectUser(pageStart, pageSize);
	}
	@Override
	public int lines() {
		// TODO Auto-generated method stub
		return this.userMapper.lines();
	}
	@Override
	public boolean insertUser(User user) {
		// TODO Auto-generated method stub
		userMapper.insertUser(user);
		return false;
	}
	@Override
	public User selectUserByUserId(int userid) {
		// TODO Auto-generated method stub
		return this.userMapper.selectUserByUserId(userid);
	}
	@Override
	public boolean updateUser(User user) {
		// TODO Auto-generated method stub
		this.userMapper.updateUser(user);
		return false;
	}
	@Override
	public boolean updatePassword(User user) {
		// TODO Auto-generated method stub
		this.userMapper.updatePassword(user);
		return false;
	}	  
}
