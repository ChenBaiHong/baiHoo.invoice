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
  
  $(function(){
		$(".formobj").Validform({
			datatype:{
				"counts":function(gets,obj,curform,regxp){
					var max = curform.find("#totalcount");
					var maxim=max.val();

					if(!/^\d+\.?\d*$/.test(gets)){
						return "只能输入数字！";
					}

					if(Number(gets)>Number(maxim)){
						return "值不能大于库存数量"+maxim+"！";
					}
					return  true;
				}	
			},
			ajaxPost:true
		});
	});

  </script>
 </head>
 <body>
  <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" action="tBShipController.do?doAdd" tiptype="4">
					<input id="id" name="id" type="hidden" value="${tBShipPage.id }">
		<table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
				<tr>
					<td align="right">
						<label class="Validform_label">
							货品名称:
						</label>
					</td>
					<td class="value" nowrap><input  name="goodsid"
					type="hidden" value="${goodsid}" id="goodsid">
					<input  name="totalcount"  type="hidden" value="${totalcount}" id="totalcount" />
					<input
					name="goodsname" class="inputxt" value="${goodsname }" id="goodsname"
					readonly="readonly" datatype="*" /> <t:choose hiddenName="goodsid"
						hiddenid="goodsid" url="tBStockController.do?tBStockSelect" name="stocknameList"
						icon="icon-search" title="货品列表" textname="goodsname,totalcount" isclear="true"></t:choose>
					<span class="Validform_checktip">请选择货品</span></td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							数量:
						</label>
					</td>
					<td class="value">
					     	 <input id="goodscount" name="goodscount" type="text" onblur="" style="width: 150px" datatype="counts"   />
							<span id="validateCount" class="Validform_checktip"></span>
							<label  class="Validform_label" style="display: none;">数量</label>
						</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							分部地址:
						</label>
					</td>
					<td class="value" nowrap><input  name="branchid"
					type="hidden" value="${id}" id="branchid"> <input
					name="branchadd" class="inputxt" value="${branchadd }" id="branchadd"
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
								                
								               >    
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
						  	 <textarea id="remark" name="remark" maxlength="100"></textarea>
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">备注</label>
						</td>
				</tr>
			</table>
		</t:formvalid>
 </body>
  <script src = "webpage/buss/ship/tBShip.js"></script>		