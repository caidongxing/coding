package com.renjun.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.renjun.dao.yw_CertificateMapper;
import com.renjun.dao.yw_FzBoxOfficeMapper;
import com.renjun.po.yw_Certificate;
import com.renjun.po.yw_FzBoxOffice;
import com.renjun.service.GiveCertificateService;

@Transactional
@Service(value="giveCertificateService")
public class GiveCertificateServiceImpl implements GiveCertificateService{

	@Autowired
	private yw_FzBoxOfficeMapper yw_FzBoxOfficeMapper;
    @Autowired
    private yw_CertificateMapper yw_CertificateMapper;
	@Override
	public List<yw_Certificate> selectCertificateByboxOfficeId(int boxofficeid) {
		// TODO Auto-generated method stub
		return yw_CertificateMapper.selectCertificateByboxOfficeId(boxofficeid);
	}
	@Override
	public boolean updateCertificateByCertificateId(
			yw_Certificate yw_Certificate) {
		// TODO Auto-generated method stub
		yw_CertificateMapper.updateCertificateByCertificateId(yw_Certificate);
		return false;
	}


}
