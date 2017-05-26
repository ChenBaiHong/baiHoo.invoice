package com.baiHoo.web.system.service;

import com.baiHoo.core.common.service.CommonService;
import com.baiHoo.web.system.pojo.base.TSUser;

/**
 * 
 *<p>Title: UserService</p>
 *<p>Description: 
 *
 *
 *
 *</p>
 *<p>Company: www.baiHoo.com</p> 
 * @author baiHoo.chen
 * @date May 8, 2017
 */
public interface UserService extends CommonService{

	public TSUser checkUserExits(TSUser user);
	public String getUserRole(TSUser user);
	public void pwdInit(TSUser user, String newPwd);
	/**
	 * 判断这个角色是不是还有用户使用
	 *@param id
	 *@return
	 */
	public int getUsersOfThisRole(String id);
}
