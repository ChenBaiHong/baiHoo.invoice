package com.baiHoo.web.system.manager;

import java.util.Comparator;

import com.baiHoo.web.system.pojo.base.Client;

/**
 * 
 *<p>Title: ClientSort</p>
 *<p>Description: </p>
 *<p>Company: www.baiHoo.com</p> 
 * @author baiHoo.chen
 * @date May 8, 2017
 */
public class ClientSort implements Comparator<Client> {

	
	public int compare(Client prev, Client now) {
		return (int) (now.getLogindatetime().getTime()-prev.getLogindatetime().getTime());
	}

}
