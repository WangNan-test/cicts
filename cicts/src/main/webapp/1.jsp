<%--
  Created by IntelliJ IDEA.
  User: 11154
  Date: 2020/1/14
  Time: 14:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="/statics/plugs/easyui/themes/bootstrap/easyui.css">
    <link rel="stylesheet" type="text/css" href="/statics/plugs/easyui/themes/icon.css">
    <script type="text/javascript" src="/statics/plugs/easyui/jquery.min.js"></script>
    <script type="text/javascript" src="/statics/plugs/easyui/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="/statics/plugs/easyui/locale/easyui-lang-zh_CN.js"></script>
    <script type="text/javascript" src="/statics/js/ajaxfileupload.js"></script>
    <script type="text/javascript" >
        function upload() {
                $.ajaxFileUpload({
                    url: 'goods/upload',//用于文件上传的服务器端请求地址
                    fileElementId: 'photo',//文件上传空间的id属性 <input type="file" id="file" name="file" />
                    type: 'post',
                    async : true,   //是否是异步
                    dataType: 'json',
                    success: function (data) {
                        alert(data)
                        alert(data.gid)
                        if (data != 0) {
                            alert("上传成功！");
                        } else {
                            alert("上传失败！");
                        }
                    }
                });

        }
    </script>
</head>
<body>

<form action="" method="post" id="uploadForm" enctype="multipart/form-data">

            <input type="file" id="photo" name="gimg"  placeholder="请选择商品宣传图">
            <button id="uploadbut" type="button" onclick="upload()" >上传图片</button>

</form>
</body>
</html>
