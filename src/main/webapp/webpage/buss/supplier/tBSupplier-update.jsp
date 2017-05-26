<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>供应商</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
  <script type="text/javascript" src="plug-in/ckeditor_new/ckeditor.js"></script>
  <script type="text/javascript" src="plug-in/ckfinder/ckfinder.js"></script>
  <script type="text/javascript">
  //编写自定义JS代码
  </script>
 </head>
 <body>
  <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" action="tBSupplierController.do?doUpdate" tiptype="4">
					<input id="id" name="id" type="hidden" value="${tBSupplierPage.id }">
		<table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
					<tr>
						<td align="right">
							<label class="Validform_label">
								供应商名称:
							</label>
						</td>
						<td class="value">
						     	 <input id="suppliername" name="suppliername" type="text" datatype="*1-20" style="width: 150px" class="inputxt"  
									               
									                 value='${tBSupplierPage.suppliername}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">供应商名称</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								供应商地址:
							</label>
						</td>
						<td class="value">
						     	 <input id="supplieraddr" name="supplieraddr" type="text" datatype="*1-20" style="width: 150px" class="inputxt"  
									               
									                 value='${tBSupplierPage.supplieraddr}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">供应商地址</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								供应商电话:
							</label>
						</td>
						<td class="value">
						     	 <input id="suppliertel" name="suppliertel" type="text" datatype="n1-13" style="width: 150px" class="inputxt"  
									               
									                 value='${tBSupplierPage.suppliertel}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">供应商电话</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								供应商Email:
							</label>
						</td>
						<td class="value">
						     	 <input id="supplieremail" name="supplieremail" type="text" datatype="e" style="width: 150px" class="inputxt"  
									               
									                 value='${tBSupplierPage.supplieremail}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">供应商Email</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								企业注册号:
							</label>
						</td>
						<td class="value">
						     	 <input id="suppliernum" name="suppliernum" type="text" datatype="*1-10" style="width: 150px" class="inputxt"  
									               
									                 value='${tBSupplierPage.suppliernum}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">企业注册号</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								联系人:
							</label>
						</td>
						<td class="value">
						     	 <input id="contactperson" name="contactperson" type="text" datatype="*1-10" style="width: 150px" class="inputxt"  
									               
									                 value='${tBSupplierPage.contactperson}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">联系人</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								联系人电话:
							</label>
						</td>
						<td class="value">
						     	 <input id="persontel" name="persontel" type="text" datatype="m" style="width: 150px" class="inputxt"  
									               
									                 value='${tBSupplierPage.persontel}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">联系人电话</label>
						</td>
					</tr>
			</table>
		</t:formvalid>
 </body>
  <script src = "webpage/buss/supplier/tBSupplier.js"></script>		