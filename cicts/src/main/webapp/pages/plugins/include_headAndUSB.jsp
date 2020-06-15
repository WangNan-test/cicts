<%@ page import="com.tyinf.cicts.vo.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript" src="/statics/js/jquery.js"></script>
<script type="text/javascript">
    function logout() {
        if (window.confirm('确定退出吗？')) {

            $.get("login/logout", function (data) {
                window.location.href = "/";
            });
        }
    }
    $(function(){
        $.ajax({
            url:"page/type",
            type: "post",
            success: function(data){
                var num="<li><a href=\"/pages/index.jsp\">首页</a> </li>" +
                    "<li><a href=\"page/list\">所有商品</a> </li>";
                var tab="";
                var drchoose="<li class=\"choose_hover\" id=\"ucser_all\"><a href=\"page/list\" style=\"color:snow\"><span>所有</span></a> </li>";
                for(x=0;x<data.length;x++){
                    num+="<li><a  href=\"page/listid?tid="+data[x].tid+"\">"+data[x].tname+"</a> </li>"
                    tab+="<li ><span>"+data[x].tname+"</span></li>"
                    drchoose+="<li ><a href=\"page/listid?tid="+data[x].tid+"\" style=\"color:skyblue\"><span >"+data[x].tname+"</span> </a></li>";
                }
                $("#gpsId").html(num);
                $("#ui-tab").html(tab);
                $("#drchoose_ul").html(drchoose);
            }
        },"json")
        $.ajax({
            url:"cart/count",
            type: "post",
            success: function(data){
                $("#cart").html("("+data+")")
            }
        })

    })
</script>
<!--头部-->
<div class="cmain">
    <div class="headtop">
        <!--头部左边-->
        <div class="top-left fl">
            <a title="Darry Ring" href="pages/index.jsp"> <img width="187" height="42" alt="Darry Ring官网" src="/statics/images/logo-white.png" /> </a>
            <span style="font-weight: normal;">校园闲置商品交易系统</span>
        </div>
        <!--头部左边end-->
        <!--头部右边-->
        <div class="top-right fr">
            <!--登录注册-->
            <ul class="tright-ul fl">
                <div id="ctl00_ucheader_pllogin2">
                    <% User user =(User) session.getAttribute("user"); %>
                    <c:if test="${user!=null}">
                        <li><a><span id="ctl00_ucheader_lit"><%=user.getUname()%></span></a></li>
                        <li> <a href="javascript:logout()" rel="nofollow">退出</a><em>|</em> </li>
                    </c:if>

                    <li><a target="black" rel="nofollow" href="/pages/member/member_index.jsp"><c:if test="${user!=null}">个人中心</c:if><c:if test="${user==null}">登陆</c:if></a><em>|</em></li>
                    <li class="headed"><em class="icon shooping"></em><a target="black" rel="nofollow" href="cart/list">购物车</a><i id="cart"></i></li>
                </div>
            </ul>

            <!--搜索框-->
            <div style="display:none;" class="search">
                <input type="text" placeholder="求婚钻戒" class="txt1" />
                <div onClick="showSearch()" class="icon toser">
                </div>
            </div>
        </div>
        <!--头部右边end-->
    </div>
</div>
<!--头部end-->
<!--导航-->
<div class="nav">
    <div class="cmain">
        <!--导航的左边-->
        <ul class="nav-ul fl" id="gpsId">
            <%--<li><a href="/pages/index.jsp">首页</a> </li>
            <li><a  href="lists.jsp">Darry Ring 求婚钻戒</a> </li>
            <li><a  href="lists.jsp">Darry Ring 爱的礼物</a></li>--%>
        </ul>
    </div>
</div>
<!--导航end-->