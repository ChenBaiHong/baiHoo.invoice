<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>货品表</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
  <script type="text/javascript" src="plug-in/ckeditor_new/ckeditor.js"></script>
  <script type="text/javascript" src="plug-in/ckfinder/ckfinder.js"></script>
  <script type="text/javascript">
  //编写自定义JS代码
  </script>
 </head>
 <body>
  <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" action="tBGoodsController.do?doAdd" tiptype="4">
					<input id="id" name="id" type="hidden" value="${tBGoodsPage.id }" />
		<table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
				<tr>
					<td align="right">
						<label class="Validform_label">
							货品名称:
						</label>
					</td>
					<td class="value">
					     	 <input id="goodsname" name="goodsname" type="text" style="width: 150px" datatype="*1-16" class="inputxt"  />
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">货品名称</label>
						</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							货品类型:
						</label>
					</td>
					<td class="value">
							  <t:dictSelect field="goodstype" type="list"
									typeGroupCode="goodsType" defaultVal="${tBGoodsPage.goodstype}"  hasLabel="false"  title="货品类型"></t:dictSelect>     
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">货品类型</label>
						</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							成本价:
						</label>
					</td>
					<td class="value">
					     	 <input id="costprice" name="costprice" type="text" datatype="n1-10" style="width: 150px" class="inputxt"  
								               
								               >
							<span class="Validform_checktip"></span>
							<label class="Validform_label" style="display: none;">成本价</label>
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
  <script src = "webpage/buss/goods/tBGoods.js"></script>		