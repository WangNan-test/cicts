<%@ page language="java" pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml" class="hb-loaded"><head>
    <jsp:include page="/pages/plugins/include_basepath.jsp"/>
          <meta charset="utf-8"/>
        <link href="/statics/css/same.css?v=1.3.7.2" type="text/css" rel="stylesheet"/>
                 <script src="/statics/js/jquery.js" type="text/javascript"></script>
<script src="/statics/js/index.js?virsion=1.3.7.2" type="text/javascript"></script>
    <title>个人中心 - 修改密码</title>
    <link href="/statics/css/same.css?v=1.3.7.2" type="text/css" rel="stylesheet">
    <link href="/statics/css/member.css?v=1.3.6.0" type="text/css" rel="stylesheet">
    <script src="/statics/js/member.js" type="text/javascript"></script>
    <script>
        $(function () {
            $("#ctl00_content_pwd1").keypress(function () {
                var pwd1 = $("#ctl00_content_pwd1").val();
                if (pwd1.length >= 5 && pwd1.length < 9) {
                    $("#rou").addClass('mb_red-color');
                    $("#zhong").removeClass('mb_red-color');
                    $("#strong").removeClass('mb_red-color');
                }
                if (pwd1.length >= 9 && pwd1.length < 12) {
                    $("#rou").addClass('mb_red-color');
                    $("#zhong").addClass('mb_red-color');
                    $("#strong").removeClass('mb_red-color');

                }
                if (pwd1.length >= 12 && pwd1.length < 20) {
                    $("#rou").addClass('mb_red-color');
                    $("#zhong").addClass('mb_red-color');
                    $("#strong").addClass('mb_red-color');
                }
                
            });

            $("#ctl00_content_pwd1").blur(function () {
                var pwd1 = $("#ctl00_content_pwd1").val();
                if (pwd1.length < 5 || pwd1.length > 20) {
                    $("#txtshow").text("密码长度不正确！");
                    $("#rou").removeClass('mb_red-color');
                    $("#zhong").removeClass('mb_red-color');
                    $("#strong").removeClass('mb_red-color');
                    $("#ctl00_content_pwd1").val("");
                    $("#showr").show();
                    $("#show_wrong").show();
                    return false;
                } else {
                    $("#showr").hide();
                    $("#show_wrong").hide();
                }
            });
            $("#ctl00_content_pwd2").blur(function () {
                var pwd1 = $("#ctl00_content_pwd1").val();
                var pwd2 = $("#ctl00_content_pwd2").val();
                if (pwd1 != pwd2) {
                    $("#txtwrong").text("两次密码输入不一致！");
                    $("#ctl00_content_pwd2").val("");
                    $(".againpwd").show();
                    return false;
                } else {
                    $(".againpwd").hide();
                }
            });
            $("#ctl00_content_pwd").blur(function(){
                var pwd=$("#ctl00_content_pwd").val();
                if(pwd==null||pwd==""){
                    $("#txtps").text("请输入密码！");
                    $(".oldPassword").show();
                    return false;
                }else{
                    $(".oldPassword").hide();
                    $.post("user/verify",{pwd:pwd},function(data){
                        if(data==1){
                            $("#txtps").text("密码不正确！");
                            $(".oldPassword").show();
                            return false;
                        }else if(data==0){
                            $(".oldPassword").hide();
                        }
                    })
                }
            })
        });

        function check() {
            var pwd = $("#ctl00_content_pwd").val();
            var pwd1 = $("#ctl00_content_pwd1").val();
            var pwd2 = $("#ctl00_content_pwd2").val();
            if (pwd=="") {
                alert("请输入原始密码！");
                return false;
            }
            if (pwd1 == "" || pwd2 == "") {
                $("#txtpwd").text("请输入密码！");
                $(".againpwd").show();
                return false;
            }
    
            if (pwd1 != pwd2) {

                $("#txtwrong").text("两次密码输入不一致！");
                $(".againpwd").show();
                return false;
            }
        }
    </script>
<body>
    <form id="aspnetForm" action="user/update" method="post" name="aspnetForm">
    <div>
        <jsp:include page="/pages/plugins/include_headAndUSB.jsp"/>

        <div class="cort">
        
    <!--中间-->
    <div class="cort">
        <!--内容-->
        <div class="cmain mb_back">
            <div class="zbk_top spalid">
                
        <div class="zbk_top spalid">
        <span>您当前的位置：</span>
        <span id="ctl00_content_website_SiteMapPath1"><a href="#ctl00_content_website_SiteMapPath1_SkipLink"></a><span>
                <a target="_blank" href="/pages/index.jsp">Darry Ring</a>
            </span><span>
            <em>></em>
            </span><span>
                <a target="_blank" href="/pages/member/member_index.jsp">我的DR</a>
            </span><span>
            <em>></em>
            </span><span>
            <span>修改密码</span>
            </span><a id="ctl00_content_website_SiteMapPath1_SkipLink"></a></span>
        </div>
            </div>
            <!--中间内容-->
            <div class="member_cort">
                <!--左边树-->
                <jsp:include page="/pages/plugins/member/member_menu.jsp"/>

                <!--左边树end-->
                <!--右边的主要内容-->
                <div class="member_cort-right fr">
                    <!--找回密码-->
                    <div class="member_password">
                        <div class="member_ask-tittle">
                            <h4>
                                修改密码</h4>
                            <p>
                                为保障账户安全，建议避免使用与其他网站相同密码。</p>
                        </div>
                        <!--找回密码-->
                        <div class="member_password-find">
                            <div class="person-cort_left-write">
                                <span>原始密码：</span>
                                <input type="password" class="write_text" id="ctl00_content_pwd" name="password">
                                <i id="ps" style="display: none" class="writer_wrong againpwd"></i><em style="display: none" class="oldPassword" id="txtps"></em>
                            </div>
                            <div style="float: left" class="person-cort_left-write person-cort_left-password">
                                <span>新密码：</span>
                                <input type="password" class="write_text" id="ctl00_content_pwd1" name="newPassword">
                                <em id="rou">弱</em> <em id="zhong">中</em> <em id="strong">强</em> 
                               
                            </div>
                            <div style="display: none;" id="showr" class="person-cort_left-write">
                                <i id="pwdwrong" class="writer_wrong pwd"></i><em class="pwd" id="txtshow"></em>
                            </div>
                            <div style="clear: both" class="person-cort_left-write">
                                <span>确认新密码：</span>
                                <input type="password" class="write_text" id="ctl00_content_pwd2" name="newPassword2">
                                <i id="wrong" style="display: none" class="writer_wrong againpwd"></i><em style="display: none" class="againpwd" id="txtwrong"></em>
                            </div>
                            
                        </div>
                        <div style="margin-left: 90px">
                                <input type="submit" style="border-style:None;" class="bt1 person-sp-button" id="btnsubmit" onClick="return check();" value="立即提交" name="ctl00$content$btnsubmit"></div>
                        <!--找回密码end-->
                    </div>
                    <!--找回密码end-->
                </div>
                <!--右边的主要内容end-->
            </div>
            <!--中间内容end-->
        </div>
        <!--内容end-->
    </div>
    <!--中间end-->

        </div>
        

<!--底部-->
<div class="footer">


            <!--验证身份end-->
        <div style="clear:both"></div>
    <div class="cmain">

        <div class="tw-foot">
            <div class="auto" id="Copyright">
                <p>Copyright &copy; 2020 校园闲置商品交易系统. 高新学院计科1604李欢</p>
            </div>
        </div>
    </div>
</div>




<!--新版右边客服start-->



<!--返回顶部-->
<div class="comeback"></div>





</body></html>