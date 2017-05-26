<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>分公司表</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
  <script type="text/javascript" src="plug-in/ckeditor_new/ckeditor.js"></script>
  <script type="text/javascript" src="plug-in/ckfinder/ckfinder.js"></script>
  <script type="text/javascript">
  //编写自定义JS代码
  </script>
 </head>
 <body>
  <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" action="tBBranchController.do?doUpdate" tiptype="4">
					<input id="id" name="id" type="hidden" value="${tBBranchPage.id }">
		<table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
					<tr>
						<td align="right">
							<label class="Validform_label">
								分公司地址:
							</label>
						</td>
						<td class="value">
						     	 <input id="branchadd" name="branchadd" type="text" style="width: 150px" datatype="*1-20" class="inputxt"  
									               
									                 value='${tBBranchPage.branchadd}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">分公司地址</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								分公司电话:
							</label>
						</td>
						<td class="value">
						     	 <input id="branchtel" name="branchtel" type="text" datatype="n6-12" style="width: 150px" class="inputxt"  
									               
									                 value='${tBBranchPage.branchtel}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">分公司电话</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								负责人姓名:
							</label>
						</td>
						<td class="value">
						     	 <input id="leadername" name="leadername" type="text" style="width: 150px" datatype="*0-10" class="inputxt"  
									               
									                 value='${tBBranchPage.leadername}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">负责人姓名</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								负责人电话:
							</label>
						</td>
						<td class="value">
						     	 <input id="leadertel" name="leadertel" type="text" datatype="m" style="width: 150px" class="inputxt"  
									               
									                 value='${tBBranchPage.leadertel}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">负责人电话</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								邮编:
							</label>
						</td>
						<td class="value">
						     	 <input id="zipcode" name="zipcode" type="text" datatype="p" style="width: 150px" class="inputxt"  
									               
									                 value='${tBBranchPage.zipcode}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">邮编</label>
						</td>
					</tr>
			</table>
		</t:formvalid>
 </body>
  <script src = "webpage/buss/branch/tBBranch.js"></script>		