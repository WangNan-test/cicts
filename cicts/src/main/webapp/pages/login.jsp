<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html class="hb-loaded">
 <head>
  <jsp:include page="/pages/plugins/include_basepath.jsp"/>
  <meta charset="utf-8" /> 
  <title>会员登录</title> 
  <meta name="Keywords" content="校园闲置商品交易系统" />
  <meta name="Description" content="Darry Ring官网会员注册登录唯一入口，Darry Ring是求婚钻戒第一品牌，想了解Darry Ring实体店、Darry Ring哪里有卖等相关Darry Ring资讯就先进入戴瑞珠宝官网注册吧！" /> 
  <meta content="26403151123072464122121676375" property="qc:admins" /> 
  <link href="/statics/css/style.css" type="text/css" rel="stylesheet" />
 </head>
 <body>

  <script src="/statics/js/jquery.js" type="text/javascript"></script>
  <script src="/statics/js/common.js" type="text/javascript"></script>
  <div class="wrap"> 
   <!-- start of 头部导航--> 
   <div class="head_top"> 
    <div class="head clearfix"> 
     <!--头部左边--> 
     <div class="topLeft left"> 
      <a href="/pages/index.jsp" title="Darry Ring"> <img width="186" height="42" src="/statics/images/logo-white.png " /> </a>
      <span>校园闲置商品交易系统</span>
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
      <form method="post" action="" id="loginform">
       <div class="cr_border"> 
        <h3></h3> 

        <div id="cssName" class="the_input "> 
         <span class="member"></span> 
         <input type="text" placeholder="请输入手机号码" id="txtName" class="al_Input dr_email" value="" name="phone" />
         <i id="tname"></i> 
        </div> 

        <!--密码--> 
        <div style="margin-top:15px;" class="the_input" id="cssPwd"> 
         <span class="password"></span> 
         <input type="password" placeholder="请输入密码" id="txtPwd" class="al_Input" value="" name="password" />
         <i id="pwdd"></i> 
        </div> 
        <!--验证码--> 
        <!--验证码end--> 
        <!--报错信息--> 
        <div class="ts_wrong" id="showWrong" style="display: none"> 
         <span id="wrong"> <span id="Label1">Label</span></span> 
        </div> 
        <!--报错信息end--> 
        <!--其他选项--> 
        <div class="other_input"> 
         <div class="left"> 
          <input type="checkbox" name="remember" id="check" value="1" /> 
          <label for="check">记住密码</label> 
         </div> 

        </div> 
        <!--其他选项end--> 
        <!--按钮--> 
        <div class="other_input"> 
         <div class="bt1 clearfix" id="login"> 
          <span class="left">注册</span>
          <span class="right focus">登录</span> 
         </div> 
        </div> 
        <!--按钮end--> 

       </div> 
       <input type="hidden" value="index.jsp" name="forward" />
      </form> 
      <!--登陆框内end--> 
     </div> 
     <!--内容右边end--> 
    </div> 
    <!--中间内容end--> 
   </div> 
   <!-- end of container --> 
   <!--底部end--> 
   <jsp:include page="plugins/bottom.jsp"/>
  
 
  </div> 

  <script type="text/javascript">
	$(document).ready(function() {
		$('#login span').eq(0).click(function() {
			location.href = "/pages/reg.jsp"
		});

		$('#login span').eq(1).click(function() {
                        $('.ts_wrong').remove();
                        $('.the_input').removeClass('error');
			if ($('#txtName').val() == '') {
				var notice = '<div class="ts_wrong"><span id="wrong">请输入手机号码！</span></div>';
                                $('#txtName').parent().after(notice);
                                $('#txtName').parent().addClass('error');
                                return false;
			}

			if ($('#txtPwd').val() == '') {
				var notice = '<div class="ts_wrong"><span id="wrong">请输入密码！</span></div>';
                                $('#txtPwd').parent().after(notice);
                                $('#txtPwd').parent().addClass('error');
                                return false;
			}

			$('form').submit(
                    $.post("login/login", $("#loginform").serialize(), function (data) {
                     if (data == 0) {
                      alert("账号不存在");
                     } else if (data == 1) {
                      alert("密码错误");
                     } else if (data == 2) {
                      location.replace("/pages/index.jsp");
                     }else if(data==6){
                      location.replace("/pages/admin/success.jsp");
                     }
                     else {
                      alert("登陆失败");
                     }
                    })
            );
		});
	});
        
        $(document).keyup(function(event){
            if(event.keyCode ==13){
               $('#login span').eq(1).click();
            }
        });
</script> 
 </body>
</html>