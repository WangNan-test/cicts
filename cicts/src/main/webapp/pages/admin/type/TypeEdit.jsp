<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<jsp:include page="/pages/plugins/include_basepath.jsp"/>
<link rel="stylesheet" type="text/css" href="/statics/plugs/easyui/themes/black/easyui.css">
<link rel="stylesheet" type="text/css" href="/statics/plugs/easyui/themes/icon.css">
<script type="text/javascript" src="/statics/plugs/easyui/jquery.min.js"></script>
<script type="text/javascript" src="/statics/plugs/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="/statics/plugs/easyui/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="/statics/plugs/ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="/statics/plugs/ckfinder/ckfinder.js"></script>
<script type="text/javascript" src="/statics/js/myvalidate.js"></script>
<script type="text/javascript">
 $(function(){
	 //保存提交表单
	 $("#subBtn").click(function(){
		 $('#formId').form('submit', {//这是异步的提交表单,提交时会自动将表单数据提交至服务器
				url:"type/edit",//服务器地址 post
				onSubmit: function(){
					      //表单验证
					/*   if(length==0){  自己也可以在此处进行表单验证
						  alert();
						  return false
					  }   */   
					            //调用表单的vakidate方法,调用执行validatebox组件 进行表单验证
					return  $('#formId').form('validate');	// 返回false终止表单提交
				},
				success: function(data){//服务器响应成功执行该函数 data是服务器返回的结果
					 if(data==0){
						 $.messager.alert("操作提示","修改成功","info",function(){
							 location.assign("/pages/admin/type/TypeList.jsp");
						 });
					 }else{
						 $.messager.alert("操作提示","修改失败","error");
					 }
				}
			});
	 });
 })
</script>
</head>
<body>
	<form action="" method="post" id="formId">
     
	  <table   class="formTable">

	  

	   	<tr>
	     <td class="tdleft">类型名称</td>
	     <td class="tdright">
	       <input type="text" name="tname" id="ename" value="${type.tname}"  class="easyui-textbox"
	           data-options="required:true,missingMessage:'姓名不能为空'">
	     </td>
	   </tr>
	   <tr>
	   
	   <tr>
	  
	     <td colspan="2" align="center">
	     <input type="hidden" name="tid" value="${type.tid}"/>
	       <a href="javaScript:void();" id="subBtn" class="easyui-linkbutton"
	          data-options="iconCls:'icon-save'">保存</a>
	       <a href="/pages/admin/type/TypeList.jsp"  class="easyui-linkbutton"
	          data-options="iconCls:'icon-back'">返回</a>
	     </td>
	   </tr>
	 </table>
</form>
</body>
</html>