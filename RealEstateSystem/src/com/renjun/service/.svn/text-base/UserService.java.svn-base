package com.renjun.service;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.renjun.po.User;

public interface UserService {

	 public com.renjun.vo.User getName(String username);
	 public com.renjun.vo.User getUserByName(String username,String password);

	 //根据岗位ID查询用户
	 public List<com.renjun.vo.User> selectUserByQuartersTypeId(int quarterstypeid);
	 //查询用户
		public List<com.renjun.vo.User> selectUser(int pageStart,int pageSize);
		
		public int lines();
		 //新增用户
	    public boolean insertUser(User user);
	  //根据用户查询用户Id
	    public User selectUserByUserId(int userid);
	    //根据员工Id修改员工信息、
	    public boolean updateUser(User user);
	    //根据用户Id修改用户密码
	    public boolean updatePassword(User user);
}
