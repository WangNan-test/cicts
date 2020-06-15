<%@ page import="com.tyinf.cicts.vo.User" %>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <jsp:include page="/pages/plugins/include_basepath.jsp"/>
    <jsp:include page="/pages/plugins/common.jsp"/>
    <script type="text/javascript" src="/statics/js/admin/goods/goods_add.js"></script>

</head>

<% User user =(User) session.getAttribute("user"); %>
<body>

<%!
    public static String GOODS_ADD_DO_URL = "pages/member/goods/goods_add_do.jsp" ;
    public static String GOODS_LIST_URL = "goods/list" ;
%>
<div>
    <jsp:include page="/pages/plugins/include_headAndUSB.jsp"/>
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
            <span>上架的商品</span>
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


                        <div class="panel-heading">
                            <strong><span class="glyphicon glyphicon-eye-open"></span>&nbsp;发布商品信息</strong>
                        </div>
                        <div class="panel-body" style="height: 80%;">

                            <form action="goods/add" method="post"   class="form-horizontal" id="goodsForm" enctype="multipart/form-data" >

                                <fieldset>
                                    <input type="hidden" name="user.uid" value="<%=user.getUid()%>"/>
                                    <div class="form-group" id="nameDiv">
                                        <label class="col-md-2 control-label" for="name">商品名称：</label>
                                        <div class="col-md-5">
                                            <input type="text" id="name" name="gname" class="form-control" placeholder="请填写商品名称">
                                        </div>
                                        <span class="col-md-5" id="nameSpan">*</span>
                                    </div>
                                    <div class="form-group" id="priceDiv">
                                        <label class="col-md-2 control-label" for="price">商品价格：</label>
                                        <div class="col-md-5">
                                            <input type="text" id="price" name="price" class="form-control" placeholder="请填写商品单价">
                                        </div>
                                        <span class="col-md-5" id="priceSpan">*</span>
                                    </div>
                                    <div class="form-group" id="itemDiv">
                                        <label class="col-md-2 control-label" for="item">商品分类：</label>
                                        <div class="col-md-5">
                                            <select id="item" name="type.tid" class="form-control">
                                                <option value="">========= 请选择商品所属分类 =========</option>
                                                <c:forEach var="types" items="${types}">
                                                    <option value="${types.tid}">${types.tname}</option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                        <span class="col-md-5" id="itemSpan">*</span>
                                    </div>
                                    <div class="form-group" id="photoDiv">
                                        <label class="col-md-2 control-label" for="photo">商品图片：</label>
                                        <div class="col-md-5">
                                            <input type="file" id="photo" name="photo" class="form-control" placeholder="请选择商品宣传图">

                                        </div>
                                        <span class="col-md-5" id="photoSpan">*</span>
                                    </div>

                                    <div class="form-group" id="noteDiv">
                                        <label class="col-md-2 control-label" >商品描述：</label>
                                        <div class="col-md-5">
                                            <textarea id="note" name="desc" class="form-control" placeholder="请输入关于该商品的信息描述"></textarea>
                                        </div>
                                        <span class="col-md-5" id="noteSpan">*</span>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-md-3 col-md-offset-3">
                                            <button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-pencil" ></span>&nbsp;提交</button>
                                            <button type="reset" class="btn btn-warning"><span class="glyphicon glyphicon-refresh"></span>&nbsp;重置</button>
                                            <a href="<%=GOODS_LIST_URL%>" class="btn btn-info"><span class="glyphicon glyphicon-th-list"></span>&nbsp;商品列表</a>
                                        </div>
                                    </div>
                                </fieldset>
                            </form>
                    <!--右边的主要内容end-->
                </div>
                <!--中间内容end-->
            </div>
            <!--内容end-->
        </div>
        <!--中间end-->

    </div>
    <!--底部-->
    <div class="model" id="model">
        <div class="Prompt" id="Prompt">
        </div>
        <span id="log_uid" style="display:none"></span>
        <span id="log_uname" style="display:none"></span>
        <span id="log_orderid" style="display:none"></span>
        <span id="log_price" style="display:none"></span>

    </div>
    <script src="http://wpa.b.qq.com/cgi/wpa.php" charset="utf-8" type="text/javascript"></script>
    <!--客服(2014年8月29日)-->
    <div style="display:none" class="Ffloat_kf">
        <div class="fkf_top">
            <div style="cursor: pointer; display: none;" id="bridgehead">
            </div>
            <div id="BizQQWPA"></div>
            <div onClick="showModel(modelsever);" style="cursor: pointer;" class="qq_hover" id="qqTalk_head">
            </div>
            <div id="BizQQWPAB" class="sh">
            </div>

            <div id="bdBridge">
                <a href="javascript:NTKF.im_openInPageChat()">
                    <img width="75" height="37" src="/statics/images/zx.jpg"></a></div>

        </div>
        <div class="fkf_bottom">
            <img width="92" height="82" alt="Darry Ring 官方微信" src="/statics/images/to_erwei.jpg">
            <a href="#">
                <img width="92" height="26" src="/statics/images/db.jpg"></a>
        </div>
    </div>

    <!--新版右边客服start-->

    <!--右边漂浮悬挂大的-->
    <div class="float_big">
        <div class="floatbig_hide fr"></div>
        <div class="floatbig_center">
            <!--客服-->
            <div onClick="javascript:NTKF.im_openInPageChat();" id="Bearonline" class="floatbig_center-kf"></div>
            <!--客服end-->
            <!--定制咨询-->
            <div id="dzzxonline" class="floatbig_center-zx">
                <a href="javascript:showModel(modelsever);"></a>
            </div>
            <!--定制咨询end-->
            <img src="/statics/images/ew.jpg">
        </div>
    </div>
    <!--右边漂浮悬挂大的end-->
    <!--右边漂浮悬挂小的-->
    <div class="float_small">
        <div class="floatbig_show fr"></div>
        <div class="floatbig_center">
            <!--客服-->
            <div onClick="javascript:NTKF.im_openInPageChat();" class="floatsmall_center-kf fr"></div>
            <!--客服end-->
            <!--定制咨询-->
            <div class="floatsmall_center-zx fr">
                <a href="javascript:showModel(modelsever);"></a>
            </div>
            <!--定制咨询end-->
            <!--二维码-->
            <div class="floatsmall_erwei fr">
                <a href="#"></a>
            </div>
            <!--二维码end-->
        </div>
    </div>
    <!--右边漂浮悬挂小的end-->
    <!--返回顶部-->
    <div class="comeback"></div>
    <!--返回顶部end-->

</div>
</body></html>