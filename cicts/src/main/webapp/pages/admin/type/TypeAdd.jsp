<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title
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
				url:"emp/add",//服务器地址 post
				onSubmit: function(){
					
		    		
		    		
					return  $('#formId').form('validate');	// 返回false终止表单提交
				},
				success: function(data){//服务器响应成功执行该函数 data是服务器返回的结果
					 if(data==0){
						 $.messager.alert("操作提示","保存成功","info",function(){
							 location.assign("${path}/page/emp/empList.jsp");
						 });
					 }else{
						 $.messager.alert("操作提示","保存失败","error");
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
	    <td class="tdleft">性别</td>
		    <td class="tdright">
             	  <input id="sex" name="sex" type="radio" value="男" checked>男
                <input id="sex" name="sex" type="radio" value="女">女
            </td>
	   </tr>
	  
	    <tr>
	    <td class="tdleft">部门</td>
	    <td class="tdright">
	  		<select id="dept" class="easyui-combobox" name="dept" style="width:200px;">
	  			<c:forEach items="${list}" var="list">
	  				<option value="${list.did}">${list.dname}</option>
	  			</c:forEach>
			</select>
			</td>
	  </tr>
	   	<tr>
	     <td class="tdleft">姓名</td>
	     <td class="tdright">
	       <input type="text" name="ename" id="ename"  class="easyui-textbox"
	           data-options="required:true,missingMessage:'姓名不能为空'">
	     </td>
	   </tr>
	   <tr>
	  
	     <td colspan="2" align="center">
	       <a href="javaScript:void();" id="subBtn" class="easyui-linkbutton"
	          data-options="iconCls:'icon-save'">保存</a>
	       <a href="page/emp/empList.jsp"  class="easyui-linkbutton"
	          data-options="iconCls:'icon-back'">返回</a>
	     </td>
	   </tr>
	 </table>
</form>
</body>
</html>