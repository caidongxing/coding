package com.renjun.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.renjun.dao.yw_RegisterBookMapper;
import com.renjun.po.yw_RegisterBook;
import com.renjun.service.RegisterBookService;
import com.renjun.vo.yw_BoxOffice;

@Transactional
@Service(value="registerBookService")
public class RegisterBookServiceImpl implements RegisterBookService{

	@Autowired
	private yw_RegisterBookMapper yw_RegisterBookMapper;
	
	

	@Override
	public boolean insertRegisterBook(yw_RegisterBook yw_RegisterBook) {
		// TODO Auto-generated method stub
		yw_RegisterBookMapper.insertRegisterBook(yw_RegisterBook);
		return false;
	}


}
