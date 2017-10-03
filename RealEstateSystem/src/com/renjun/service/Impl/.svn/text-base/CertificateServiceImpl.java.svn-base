package com.renjun.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.renjun.dao.yw_CertificateMapper;
import com.renjun.po.yw_Certificate;
import com.renjun.service.CertificateService;

@Transactional
@Service(value="certificateService")
public class CertificateServiceImpl implements CertificateService{

	@Autowired
	private yw_CertificateMapper yw_CertificateMapper;
	@Override
	public boolean insertCertificate(yw_Certificate yw_Certificate) {
		// TODO Auto-generated method stub
		yw_CertificateMapper.insertCertificate(yw_Certificate);
		return false;
	}
	@Override
	public yw_Certificate selectCertificate(int rightinformationid) {
		// TODO Auto-generated method stub
		return this.yw_CertificateMapper.selectCertificate(rightinformationid);
	}

}
