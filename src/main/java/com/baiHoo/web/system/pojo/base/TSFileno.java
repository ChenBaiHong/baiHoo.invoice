package com.baiHoo.web.system.pojo.base;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import com.baiHoo.core.common.entity.IdEntity;

/**
 * 
 *<p>Title: TSFileno</p>
 *<p>Description: 
 *
 *
 *
 *</p>
 *<p>Company: www.baiHoo.com</p> 
 * @author baiHoo.chen
 * @date May 8, 2017
 */
@SuppressWarnings("all")
@Entity
@Table(name = "t_s_fileno")
public class TSFileno extends IdEntity implements java.io.Serializable {
	private String filenoBefore;
	private int filenoNum;
	private Date filenoYear;
	private String filenoType;
	
	@Column(name = "filenobefore", length = 32)
	public String getFilenoBefore() {
		return filenoBefore;
	}

	public void setFilenoBefore(String filenoBefore) {
		this.filenoBefore = filenoBefore;
	}
	@Column(name = "filenonum")
	public int getFilenoNum() {
		return filenoNum;
	}

	public void setFilenoNum(int filenoNum) {
		this.filenoNum = filenoNum;
	}
	 
	@Column(name = "filenotype", length = 32)
	public String getFilenoType() {
		return filenoType;
	}

	public void setFilenoType(String filenoType) {
		this.filenoType = filenoType;
	}
	@Temporal(TemporalType.DATE)
	@Column(name = "filenoYear", length = 13)
	public Date getFilenoYear() {
		return filenoYear;
	}

	public void setFilenoYear(Date filenoYear) {
		this.filenoYear = filenoYear;
	}

}