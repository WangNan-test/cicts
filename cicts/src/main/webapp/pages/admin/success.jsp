<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"  %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<jsp:include page="/pages/plugins/include_basepath.jsp"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/statics/plugs/easyui/themes/black/easyui.css">
<link rel="stylesheet" type="text/css" href="/statics/plugs/easyui/themes/icon.css">
<script type="text/javascript" src="/statics/plugs/easyui/jquery.min.js"></script>
<script type="text/javascript" src="/statics/plugs/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="/statics/plugs/easyui/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="/statics/js/ajaxfileupload.js"></script>
<script type="text/javascript">
	$(function(){
		/*$.post("menu/list",function(data){
			var str="";
			for(x=0;x<data.length;x++){
				str+="<a href='javaScript:void();' class='easyui-linkbutton' data-options='plain:true' onclick='addTab(\""+data[x].mname+"\",\""+data[x].url+"\")'>"+data[x].mname+"</a> <br/>";
			}
			 $("#menuId").html(str);
		},"json");*/
		//批量修改菜单链接
	  	$(".menu-a").linkbutton({
	  		plain:true
	  	});
		//点击头像上传
		$("#uploadBtn").click(function(){
			//打开一个对话框
			$('#uploadId').dialog({
				title: '上传头像',
				width: 300,
				height: 100,
				closed: false,
				modal: true,
				buttons:[{
					text:'保存',
					iconCls:"icon-save",
					handler:function(){
						//点击保存,上传文件
						$('#uploadId').dialog({
							title: '上传头像',
							width: 300,
							height: 100,
							closed: false,
							modal: true,
							buttons:[{
								text:'保存',
								iconCls:"icon-save",
								handler:function(){
									//点击保存,上传文件
									$.ajaxFileUpload({
										url:'login/upload',//用于文件上传的服务器端请求地址
										fileElementId:'img',//文件上传空间的id属性 <input type="file" id="file" name="file" />
										dataType:'text',
										success: function (data){
											alert(data)
											if(data==0){
												alert("上传成功！");
												$('#uploadId').dialog('close');//关闭当前对话框
												location.reload();//刷新当前页面
											}else{
												alert("上传失败！");
											}
										}
									});
								}
							},
								{
									text:'关闭',
									iconCls:"icon-cancel",
									handler:function(){
										$('#uploadId').dialog('close')
									}
								}]
						});
					}
				},
					{
						text:'关闭',
						iconCls:"icon-cancel",
						handler:function(){
							$('#uploadId').dialog('close')
						}
					}]
			});
		});


	})
	//动态添加选项卡
    function addTab(menuName,url){
    	//判断面板上是否已经存在指定标题的选项卡  false-不存在,true-已存在
    	if($("#tt").tabs("exists",menuName)){
    		//如果已存在,那么就切换到点击菜单对应的选项卡
    		$("#tt").tabs("select",menuName);
    		//更新选项卡的内容
    		var tab = $('#tt').tabs('getSelected');  // 获得当前选中的选项卡面板
    		$('#tt').tabs('update', {
    			tab: tab,
    			options: {
    				title: menuName,
    				content:"<iframe  src='"+url+"' width='98%' height=\"98%\" frameborder=\"0\"></iframe>",    
    			}
    		});
    	}else{
    		//执行添加选项卡
    		$('#tt').tabs('add',{    
        	    title:menuName,    
        	    content:"<iframe  src='"+url+"' width='98%' height=\"98%\" frameborder=\"0\"></iframe>",    
        	    closable:true 
        	});  
    	}
    }
</script>
<style type="text/css">
/* 顶部样式 */
.div-header {
    min-width:650px;
    line-height:48px;
    background:black;
}

.container-fluid {
    padding-right: 15px;
    padding-left: 15px;
}

.header-title {
    color: #00a2d2;
    float: left;
    line-height: 48px;
    padding-left: 50px;
    font-size: 24px;
    font-family: '楷体';
}

.header-right{
    float: right;
    margin: 0px;
}
.header-right a{
    display: block;
    float: left;
    font-size: 16px;
    font-family: '楷体';
    color: #00a2d2;
    padding-left: 15px;
    padding-right: 15px;
    line-height: 48px;
    height: 48px;
    margin-right: 10px;
    text-decoration: none;
}
.header-right a:hover {
  background-color: #00A2D2;
  color: white;
}
</style>
</head>
<body>

<div id="cc" class="easyui-layout" data-options="fit:true">   
    <!-- 顶部 -->
    <div data-options="region:'north'" style="height:50px;">
          <div class="div-header">
		    <!-- 左侧标题 -->
		    <div class="header-title">校园闲置商品交易系统</div>
		    <!-- 右侧菜单 -->
		    <div class="header-right">
		      <a href="javaScript:void(0)">欢迎您 ${user.uname}</a>
		      <a href="login/logout">安全退出</a>
		      <c:if test="${user.portrait==null}">
		   	   <a href="javaScript:vaid(0)" id="uploadBtn">上传头像</a>
		      </c:if>
		       <c:if test="${user.portrait!=null}">
		   	   	<img src="upload/${user.portrait}"
				         style="width: 46px; height: 46px; border-radius: 20px; margin: 0px;"/>
		      </c:if>
		    </div>
		    <div style="clear: left;"></div><!-- 清除浮动 -->
		  </div>
    </div>
    <!-- 左边 -->   
    <div data-options="region:'west',title:'操作菜单',split:true" style="width:150px;">
		  <div id="aa" data-options="iconCls:'icon-save',selected:true" style="overflow:auto;padding:10px;">   
			    <div id="menuId">

					<a href='javaScript:void();' class='easyui-linkbutton' data-options='plain:true' onclick='addTab("商品分类管理","/pages/admin/type/TypeList.jsp")'>商品分类管理</a> <br/>
					<a href='javaScript:void();' class='easyui-linkbutton' data-options='plain:true' onclick='addTab("查看用户","/pages/admin/user/UserList.jsp")'>查看用户</a> <br/>
					<a href='javaScript:void();' class='easyui-linkbutton' data-options='plain:true' onclick='addTab("查看所有商品","admin/list")'>查看所有商品</a> <br/>

				</div>
		 </div> 
    </div> 
    <!-- 中间 -->  
    <div data-options="region:'center',title:'工作区间'">
          <!-- 选项卡组件 -->
         <div id="tt" class="easyui-tabs" data-options="fit:true,border:false,plain:false">

		 </div>
    </div>   
</div> 


	<div id="uploadId">
		<form action="" method="post" enctype="multipart/form-data">
			<input type="file" id="img" name="img">
		</form>
	</div>

</body>
</html>