<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>出库单表</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
  <script type="text/javascript" src="plug-in/ckeditor_new/ckeditor.js"></script>
  <script type="text/javascript" src="plug-in/ckfinder/ckfinder.js"></script>
  <script type="text/javascript">
  //编写自定义JS代码
  </script>
 </head>
 <body>
  <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" action="tBShipController.do?doUpdate" tiptype="4">
					<input id="id" name="id" type="hidden" value="${tBShipPage.id }">
		<table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
					<tr>
						<td align="right">
							<label class="Validform_label">
								货品名称:
							</label>
						</td>
						<td class="value" nowrap><input  name="goodsid"
					type="hidden" value="${tBShipPage.goodsid}" id="goodsid"> <input
					name="goodsname" class="inputxt" value="${tBShipPage.goodsname }" id="goodsname"
					readonly="readonly" datatype="*" /> <t:choose hiddenName="goodsid"
						hiddenid="id" url="tBGoodsController.do?tBGoodsSelect" name="goodsnameList"
						icon="icon-search" title="货品列表" textname="goodsname" isclear="true"></t:choose>
					<span class="Validform_checktip">请选择货品</span></td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								数量:
							</label>
						</td>
						<td class="value">
						     	 <input id="goodscount" name="goodscount" type="text" style="width: 150px" class="inputxt"  
									               
									                 value='${tBShipPage.goodscount}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">数量</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								状态:
							</label>
						</td>
						<td class="value">
						     	 <input id="status" name="status" type="text" style="width: 150px" class="inputxt"  
									               
									                 value='${tBShipPage.status}'>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">状态</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								分部地址:
							</label>
						</td>
						<td class="value" nowrap><input  name="branchid"
					type="hidden" value="${tBShipPage.branchid}" id="branchid"> <input
					name="branchadd" class="inputxt" value="${tBShipPage.branchadd }" id="branchadd"
					readonly="readonly" datatype="*" /> <t:choose hiddenName="branchid"
						hiddenid="id" url="tBBranchController.do?tBBranchSelect" name="branchList"
						icon="icon-search" title="分部列表" textname="branchadd" isclear="true"></t:choose>
					<span class="Validform_checktip">请选择分部</span></td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								出库日期:
							</label>
						</td>
						<td class="value">
									  <input id="shipdate" name="shipdate" type="text" style="width: 150px" 
						      						class="Wdate" onClick="WdatePicker()"
									                
						      						 value='<fmt:formatDate value='${tBShipPage.shipdate}' type="date" pattern="yyyy-MM-dd"/>'>    
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">出库日期</label>
						</td>
					</tr>
					<tr>
						<td align="right">
							<label class="Validform_label">
								备注:
							</label>
						</td>
						<td class="value">
						  	 	<textarea id="remark" name="remark">${tBShipPage.remark}</textarea>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">备注</label>
						</td>
					</tr>
			</table>
		</t:formvalid>
 </body>
  <script src = "webpage/buss/ship/tBShip.js"></script>		