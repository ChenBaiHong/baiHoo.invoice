<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>入库单表</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
  <script type="text/javascript" src="plug-in/ckeditor_new/ckeditor.js"></script>
  <script type="text/javascript" src="plug-in/ckfinder/ckfinder.js"></script>
  <script type="text/javascript">
  //编写自定义JS代码
  </script>
 </head>
 <body>
  <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" action="tBPurchaseController.do?doAdd" tiptype="4">
					<input id="id" name="id" type="hidden" value="${tBPurchasePage.id }" />
		<table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
				<tr>
					<td align="right">
						<label class="Validform_label">
							货品批号:
						</label>
					</td>
					<td class="value">
					     	 <input id="goodsnumber" datatype="*1-20" name="goodsnumber" type="text" style="width: 150px" class="inputxt"  />
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">货品批号</label>
						</td>
						</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							货品名称:
						</label>
					</td>
					<td class="value" nowrap><input  name="goodsid"
					type="hidden" value="${goodsid}" id="goodsid"> 
					 <input	name="goodsname" class="inputxt" value="${goodsname }" id="goodsname"
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
					     	 <input id="goodscount" name="goodscount" type="text" datatype="n1-10" style="width: 150px" class="inputxt"  
								               
								               >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">数量</label>
						</td>
					</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							单价:
						</label>
					</td>
					<td class="value">
					     	 <input id="price" name="price" type="text" datatype="n1-10" style="width: 150px" class="inputxt"  
								               
								               >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">单价</label>
						</td>
					</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							供应商名称:
						</label>
					</td>
					<td class="value" nowrap><input  name="supplierid"
					type="hidden" value="${id}" id="supplierid"> <input
					name="suppliername" class="inputxt" value="${suppliername }" id="suppliername"
					readonly="readonly" datatype="*" /> <t:choose hiddenName="supplierid"
						hiddenid="id" url="tBSupplierController.do?tBGoodsSelect" name="supplierList"
						icon="icon-search" title="货品列表" textname="suppliername" isclear="true"></t:choose>
					<span class="Validform_checktip">请选供应商</span></td>
						</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							联系人:
						</label>
					</td>
					<td class="value">
					     	 <input id="contactperson" name="contactperson" datatype="*1-10" type="text" style="width: 150px" class="inputxt"  
								               
								               >
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
								               
								               >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">联系人电话</label>
						</td>
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
  <script src = "webpage/buss/purchase/tBPurchase.js"></script>		