<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html class="hb-loaded">
    <head>
        <jsp:include page="/pages/plugins/include_basepath.jsp"/>
	    <meta charset="utf-8">

	    <title>会员注册</title>
        <meta name="Keywords" content="Darry Ring钻戒价格,Darry Ring钻戒图片">
        <meta name="Description" content="Darry Ring官网会员注册登录唯一入口，Darry Ring是求婚钻戒第一品牌，想了解Darry Ring实体店、Darry Ring哪里有卖等相关Darry Ring资讯就先进入戴瑞珠宝官网注册吧！">
        <link href="/statics/css/style.css" type="text/css" rel="stylesheet"/>
    </head>
<body>
		<!-- start of 头部导航-->
	<div class="head_top">
        <div class="head clearfix">
            <!--头部左边-->
            <div class="topLeft left">
                <a href="/pages/index.jsp" title="Darry Ring">
                    <img width="186" height="42" src="/statics/images/logo-white.png">
                </a>
                <span>校园闲置商品销售页面</span>
            </div>
            <!--头部左边end-->
            <!--头部右边-->
            <ul class="topRight right">
                <li>更方便</li>
                <li class="tr_2">更快捷</li>
                <li class="tr_3">更省钱</li>
            </ul>
            <!--头部左边end-->
        </div>
    </div>
    <!--end of 头部导航-->
    <!-- starto of container -->
	<div class="container">
        <!--中间内容-->
        <div class="cmain ddd">
            <!--内容右边-->
            <div class="cort-right right">
            	<div class="r_bg"></div>
                <!--登陆框内-->
                <div class="cr_border">
                    <form method="post" action="" class="form_first" id="loginForm">
                    <input type="hidden" value="1" name="type">
                    <input type="hidden" value="login.html" name="forward">
                    <input type="hidden" value="H6mY5VyS" name="skey">
                    <div style="" class="photo_show">
                        <!--邮箱-->
                        <div class="the_input">
                           <span class="member"></span>
                           <input type="text" placeholder="请输入手机号码" class="al_Input dr_photo" value="" id="phone" name="phone" onblur="phonenotNull()">
                        </div>
                        <!--邮箱end-->
                        <!--密码-->
                        <div class="the_input">
                            <span class="member"></span>
                            <input type="text" placeholder="请输入学院" class="al_Input dr_photo" value=""  >
                        </div>
                        <div class="the_input">
                            <span class="member"></span>
                            <input type="text" placeholder="请输入专业" class="al_Input dr_photo" value=""  >
                        </div>
                        <div class="the_input">
                            <span class="member"></span>
                            <input type="text" placeholder="请输入学号" class="al_Input dr_photo" value=""  >
                        </div>

                        <!--密码-->
                        <div class="the_input ">
                           <span class="pw"></span>
                           <input type="password" placeholder="请输入密码" maxlength="21" class="al_Input dr_photo" id="password" value="" name="password" onblur="passWordnotNull()">
                        </div>
                        <!--密码end-->
                        <!--密码-->
                        <div class="the_input ">
                           <span class="pw"></span>
                           <input type="password" placeholder="确认密码" maxlength="21" class="al_Input dr_photo" value="" id="password_confirm" name="password_confirm" onblur="passnotNull()">
                        </div>
                        <!--密码end-->

                        <!--其他合作-->
                        <div class="other_hz">
                            <input type="button" value="立即注册" id="mobile_reg" class="up" onclick="reg()">
                        </div>
                        <!--其他合作end-->
                    </div>
                    </form>
                    <!--手机注册end-->
                    <div><span style="font-size: 12px; display: inline-block;padding-top: 10px;float:left;margin-left: 176px; ">已经有账号，</span><span style="color: #8e4f1b; font-size: 12px; display: inline-block; float: right; margin-right: 42px; padding-top: 10px;"><a href="/pages/login.jsp">立即登录</a></span></div>

                </div>
                <!--登陆框内end-->
            </div>
            <!--内容右边end-->
        </div>
        <!--中间内容end-->
    </div>
    <!-- end of container -->

        <!--底部end-->
        <jsp:include page="plugins/bottom.jsp"/>

<script src="/statics/js/jquery.js" type="text/javascript"></script>
<script type="text/javascript">

function reg(){
    if(passWordnotNull()&&passnotNull()&&phonenotNull()) {
        $.post("login/reg", $("#loginForm").serialize(), function (data) {
            if (data == 0) {
                alert("注册失败");
            } else if (data == 1) {
                alert("手机号已存在");
            } else if (data == 2) {
                location.replace("/pages/login.jsp");
            }else if(data==3){
                alert("两次密码不一致！");
            }
            else {
                alert("注册失败");
            }
        })
    }
}
function passWordnotNull(){
    var password=$("#password").val();
        if(password==null||password==""){
        var notice = '<div class="ts_wrong"><span id="wrong">请输入密码！</span></div>';
        $('input[name="password"]').parent().after(notice);
        return false;
    }else{
        $(".ts_wrong").hide();
        return true;
    }
}
function passnotNull(){
    var password=$("#password_confirm").val();
    if(password==null||password==""){
        var notice = '<div class="ts_wrong"><span id="wrong">请输入密码！</span></div>';
        $('input[name="password_confirm"]').parent().after(notice);
        return false;
    }else{
        $(".ts_wrong").hide();
        return true;
    }
}
function phonenotNull(){
    var phone=$("#phone").val();
    if(phone==null||phone==""){
        var notice = '<div class="ts_wrong"><span id="wrong">请输入手机号！</span></div>';
        $('input[name="phone"]').parent().after(notice);
        return false;
    }else if(phone!=null){
        var reg = /^1[3578]\d{9}$/;
        if(reg.test(phone)) {
            $(".ts_wrong").hide();
            return true
        }else{
            var notice = '<div class="ts_wrong"><span id="wrong">手机号格式不正确</span></div>';
            $('input[name="phone"]').parent().after(notice);
            return false;
        }
    }else{
        $(".ts_wrong").hide();
        return true;
    }
}

</script>
</body>
</html>