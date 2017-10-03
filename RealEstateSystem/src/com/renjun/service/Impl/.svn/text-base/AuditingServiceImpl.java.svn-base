package com.renjun.service.Impl;
import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.renjun.dao.yw_AuditingOpinionMapper;
import com.renjun.dao.yw_FirstOpiniontMapper;
import com.renjun.dao.yw_RecheckOpiniontMapper;
import com.renjun.po.yw_AuditingOpinion;
import com.renjun.po.yw_FirstOpiniont;
import com.renjun.po.yw_RecheckOpiniont;
import com.renjun.service.AuditingService;

@Transactional
@Service(value="auditingService")
public class AuditingServiceImpl implements AuditingService{

	@Resource
	private yw_FirstOpiniontMapper yw_FirstOpiniontMapper;
	@Resource
	private yw_RecheckOpiniontMapper yw_RecheckOpiniontMapper;
	@Resource
	private yw_AuditingOpinionMapper yw_AuditingOpinionMapper;
	@Override
	public boolean insertFirstOpiniont(yw_FirstOpiniont yw_FirstOpiniont) {
		// TODO Auto-generated method stub
		this.yw_FirstOpiniontMapper.insertFirstOpiniont(yw_FirstOpiniont);
		return false;
	}
	@Override
	public yw_FirstOpiniont selectFirstOpiniont(int boxofficeid) {
		// TODO Auto-generated method stub
		return this.yw_FirstOpiniontMapper.selectFirstOpiniont(boxofficeid);
	}
	@Override
	public boolean insertRecheckopiniont(yw_RecheckOpiniont yw_recheckOpiniont) {
		// TODO Auto-generated method stub
		this.yw_RecheckOpiniontMapper.insertRecheckopiniont(yw_recheckOpiniont);
		return false;
	}
	@Override
	public yw_RecheckOpiniont selectRecheckopiniont(int boxofficeid) {
		// TODO Auto-generated method stub
		return this.yw_RecheckOpiniontMapper.selectRecheckopiniont(boxofficeid);
	}
	@Override
	public boolean updateRecheckopiniont(yw_RecheckOpiniont yw_recheckOpiniont) {
		// TODO Auto-generated method stub
		this.yw_RecheckOpiniontMapper.updateRecheckopiniont(yw_recheckOpiniont);
		return false;
	}
	@Override
	public boolean insertAuditingOpinion(yw_AuditingOpinion yw_AuditingOpinion) {
		// TODO Auto-generated method stub
		this.yw_AuditingOpinionMapper.insertAuditingOpinion(yw_AuditingOpinion);
		return false;
	}
	@Override
	public yw_AuditingOpinion selectAuditingOpinion(int boxofficeid) {
		// TODO Auto-generated method stub
		return this.yw_AuditingOpinionMapper.selectAuditingOpinion(boxofficeid);
	}
	@Override
	public boolean updateAuditingOpinion(yw_AuditingOpinion yw_AuditingOpinion) {
		// TODO Auto-generated method stub
		yw_AuditingOpinionMapper.updateAuditingOpinion(yw_AuditingOpinion);
		return false;
	}
	@Override
	public yw_FirstOpiniont selectRecheckopiniontByboxOfficeId(int boxofficeid) {
		// TODO Auto-generated method stub
		return this.yw_RecheckOpiniontMapper.selectRecheckopiniontByboxOfficeId(boxofficeid);
	}
	@Override
	public boolean updateFirstopiniont(
			yw_FirstOpiniont yw_FirstOpiniont) {
		// TODO Auto-generated method stub
		yw_FirstOpiniontMapper.updateFirstopiniont(yw_FirstOpiniont);
		return false;
	}

}
