package com.renjun.service;
import com.renjun.po.yw_AuditingOpinion;
import com.renjun.po.yw_FirstOpiniont;
import com.renjun.po.yw_RecheckOpiniont;

public interface AuditingService {
	    //新增初审
		public boolean insertFirstOpiniont(yw_FirstOpiniont yw_FirstOpiniont);
		//查看上一级审核意见
		public yw_FirstOpiniont selectFirstOpiniont(int boxofficeid);
		//修改初审
		
		public boolean updateFirstopiniont(yw_FirstOpiniont yw_FirstOpiniont);

		 //新增复审
	    public boolean insertRecheckopiniont(yw_RecheckOpiniont yw_recheckOpiniont);
	    //查询复审
	    public yw_RecheckOpiniont selectRecheckopiniont(int boxofficeid);
	  //修改复审
	    public boolean updateRecheckopiniont(yw_RecheckOpiniont yw_recheckOpiniont);
	  //新增审核信息
	    public boolean insertAuditingOpinion(yw_AuditingOpinion yw_AuditingOpinion);
	    //根据办箱ID查询审核
	    public yw_AuditingOpinion selectAuditingOpinion(int boxofficeid);
	    //根据办箱ID修改审核信息
	    public boolean updateAuditingOpinion(yw_AuditingOpinion yw_AuditingOpinion);
	    //根据办箱id查询复审信息
	    public yw_FirstOpiniont selectRecheckopiniontByboxOfficeId(int boxofficeid);
}
