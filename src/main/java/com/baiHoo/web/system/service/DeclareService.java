package com.baiHoo.web.system.service;

import java.util.List;

import com.baiHoo.core.common.service.CommonService;
import com.baiHoo.web.system.pojo.base.TSAttachment;

/**
 * 
 *<p>Title: DeclareService</p>
 *<p>Description: 
 *
 *
 *
 *</p>
 *<p>Company: www.baiHoo.com</p> 
 * @author baiHoo.chen
 * @date May 8, 2017
 */
public interface DeclareService extends CommonService{
	
	public List<TSAttachment> getAttachmentsByCode(String businessKey,String description);
	
}
