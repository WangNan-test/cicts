<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
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
    <script type="text/javascript">
        $(function(){
            //修改按钮
            $("#updateBtn").click(function(){
                //验证选中的复选框数量 只能为1
                var tid = $("input[name='tid']:checked");
                if(tid.length==0){
                    //alert("请至少选择一条记录!");                           窗口关闭时执行此函数
                    //$.messager.alert("操作提示","请至少选择一条记录","warning",function(){alert()});
                    $.messager.alert("操作提示","请至少选择一条记录","warning");
                    return;
                }else if(tid.length>1){
                    //alert("只能选择一条记录!");
                    $.messager.alert("操作提示","只能选择一条记录!","warning");
                    return;
                }else{
                    //获得选中的id
                    var tid = tid.val();
                    location.assign("/type/editPro?tid="+tid);
                }
            })

            /*//删除按钮
            $("#deleteBtn").click(function(){
                var articleIds = $("input[name='eid']:checked");
                if(articleIds.length==0){
                    $.messager.alert("操作提示","请至少选择一条记录!","warning");
                    return;
                }else{
                    var ids = "";//记录所有选中选项的id
                    //去删除,获得选中的多个选项id
                    articleIds.each(function(i,e){ //e迭代时已经将jquery对象转为dom
                        // e.value; $(e).val()
                        ids +=e.value+",";

                    });
                    /!* if(confirm("您确定要删除吗?")){
                        location.assign("${path}/article?mark=delarticle&aids="+ids);
    			} *!/
    			$.messager.confirm("操作提示","您确定要删除吗?",function(r){
    				 if(r){
    					// location.assign("/admin?status=delete&ids="+ids);
    					$.get("emp/delete",{ids:ids},function(data){
    						   if(data==0){
    							   $.messager.alert("操作提示","删除成功!","info",function(){
    								   $('#tableId').datagrid('load');//重新加载表格数据
    							   });

    						   }else{
    							   $.messager.alert("操作提示","删除失败!","error");
    						   }
    					});
    				 }
    			});
    		}
    	})*/



            //使用datagrid组件加载表格数据
            $('#tableId').datagrid({
                //DataGrid属性 对整个表格进行设置
                url:'user/list',  //此请求是异步的(easyui封装的 post方式请求 $.get(),$.post())
                title:"类型列表",//标题
                collapsible:true,//折叠,收缩
                maximizable:true,//最大话按钮
                fitColumns:true,//列自适应
                rownumbers:true,//行号
                //singleSelect:true,只能选中一条
                columns:[[
                    //列属性 对每个列进行设置
                    {field:'uid',width:200,checkbox:true},
                    {field:'uname',title:'用户名称',width:200},
                    {field:'realname',title:'真实姓名',width:200},
                    {field:'sex',title:'性别',width:200},
                    {field:'address',title:'用户地址',width:200},
                    {field:'phone',title:'用户电话',width:200}
                ]]
            });
        })
    </script>
</head>
<body>
<div>
    <%-- <a href="${path}/article?mark=toadd" class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true">新增</a> --%>
    <%--<a href="javaScript:void();" id="updateBtn"  class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true">修改</a>--%>
</div>
<table id="tableId"></table>
</body>
</html>