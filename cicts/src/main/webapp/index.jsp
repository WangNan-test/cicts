
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml" class="hb-loaded">
<head>
    <jsp:include page="/pages/plugins/include_basepath.jsp"/>
    <title>首页</title>
    <link href="/statics/css/index_A.css?v=1.3.7.1" type="text/css" rel="stylesheet" />
    <link href="/statics/css/same_A.css?v=1.3.7.2" type="text/css" rel="stylesheet" />
    <meta content="darry ring,戴瑞珠宝,darry ring钻戒价格,darry ring 实体店,求婚戒指" name="Keywords" />
    <meta content="香港戴瑞珠宝DR（DarryRing）官方网站,每位男士凭身份证一生只可购买一枚，最独特的求婚钻戒，购钻授予真爱证书，可定制专属页面，证明与找寻一生唯一真爱的首选，其它产品包括求婚钻戒、结婚钻戒、求婚戒指、结婚戒指、对戒。" name="Description" />

</head>
<body>
<script type="text/javascript" src="js/jquery.js"></script>
<form id="form1" action="/" method="post" name="form1"/>
    <!--遮罩-->
    <div class="backall">
    </div>
    <!--遮罩end-->
<jsp:include page="/pages/plugins/include_headAndUSB.jsp"/>
    <script type="text/javascript">
        function logout() {
            if (window.confirm('确定退出吗？')) {

                $.get("/nAPI/QuitExit.ashx", function (data) {
                    window.location.href = "/";
                });
            }
        }
    </script>
    <div>
        <!--banner-->
        <div class="indexbanner-all">
            <ul class="indexbanner">
                <li class="tb_first" style="display: block; opacity: 0.982279;">
                    <div class="cmain cb_main">
                        <a class="cb_jdt" target="_blank" href="index.htmlbrand.html"></a>
                        <div class="banner-word sp_width">
                            <img src="/statics/images/dr_logo.png" />
                            <div class="baner_longline">
                                <em></em>
                                <span>爱的最高承诺</span>
                                <em></em>
                            </div>
                            <h2>男士一生仅能定制一枚</h2>
                            <div class="baner_shortline">
                                <em></em>
                                <span>寓意：一生&middot;唯一&middot;真爱</span>
                                <em></em>
                            </div>
                            <div class="button sp_button">
                                <div class="bt2">
                                    <a target="_blank" href="index.htmlbrand.html">了解品牌文化</a>
                                </div>
                            </div>
                        </div>
                    </div> </li>
                <li class="tb_sec" style="display: list-item; opacity: 0.0177213;"> <a target="_blank" href="index.html/xiaoshidai4.html">
                    <div class="cmain cb_main">
                    </div> </a> </li>
                <li class="tb_third" style="display: none;">
                    <div class="cmain cb_main">
                        <a class="cb_jdt" target="_blank" href="index.htmlbrand.html_mr"></a>
                        <div class="button sp_button DRstar_more">
                            <div class="bt2">
                                <a target="_blank" href="index.htmlbrand.html_mr">了解明星DR族</a>
                            </div>
                        </div>
                    </div> </li>
                <li class="tb_four" style="display: none;">
                    <div class="cmain cb_main">
                        <a class="cb_jdt" target="_blank" href="index.html/shopyd"></a>
                        <div class="banner-word sp_width">
                            <img src="images/spdr_logo.png" />
                            <h2 class="hax_margin">最浪漫的珠宝店</h2>
                            <div class="baner_longline">
                                <p>北京 / 上海 / 广州 / 深圳 / 重庆</p>
                            </div>
                            <div class="button sp_button">
                                <div class="bt2">
                                    <a target="_blank" href="index.html/shopyd">预约到店</a>
                                </div>
                            </div>
                            <div class="baner_shortline">
                                <p>更多实体店持续开设.....</p>
                            </div>
                        </div>
                    </div> </li>
            </ul>
            <ul class="indexbanner_bottom">
                <li class=""></li>
                <li class="click_inbanner"></li>
                <li class=""></li>
                <li class=""></li>
            </ul>
        </div>
        <!--中间的内容-->
        <div class="all-thing">
            <!--提示-->
            <div class="loverit_word" style="display: none;">
                Darry Ring严格规定男士凭身份证一生仅能定制一枚，象征男人一生真爱的最高承诺。输入身份证号码即可查询购买记录。
            </div>
            <!--提示end-->
            <!--错误-->
            <div class="loverit_wrong" style="display: none;">
                <p>信息填写不正确，请重新输入。</p>
            </div>
            <!--错误end-->
            <div class="cmain">
                <!--验证身份-->

                <!--验证身份end-->
                <!--资讯内容的ul-->
                <ul class="news-ul">
                    <!--每一块li-->
                    <li>
                        <div class="ul-top">
                            <a target="_blank" href="/shopyd"> <img width="235" height="130" alt="Darry Ring实体店" src="/statics/images/tyzx.jpg" /> </a>
                        </div>
                        <div class="ul-center">
                            <a target="_blank" href="/shopyd" class="">Darry Ring实体店</a>
                        </div>
                        <div class="ul-bottom">
                        </div> </li>
                    <!--每一块li-->
                    <li>
                        <div class="ul-top">
                            <a target="_blank" href="brand.html"> <img width="235" height="130" alt="关于Darry Ring" src="/statics/images/zajz.jpg" /> </a>
                        </div>
                        <div class="ul-center">
                            <a target="_blank" href="brand.html" class="">关于Darry Ring(DR真爱钻戒)</a>
                        </div>
                        <div class="ul-bottom">
                        </div> </li>
                    <!--每一块li-->
                    <li>
                        <div class="ul-top">
                            <a target="_blank" href="brand.html_mr"> <img width="235" height="130" alt="社会名人倾情推荐" src="/statics/images/famous.jpg" /> </a>
                        </div>
                        <div class="ul-center">
                            <a target="_blank" href="brand.html_mr">明星 DR 族</a>
                        </div>
                        <div class="ul-bottom">
                        </div> </li>
                    <!--每一块li-->
                    <li>
                        <div class="ul-top">
                            <a target="_blank" href="lists.html"> <img width="235" height="130" alt="网络热门钻戒品牌" src="/statics/images/wlzj.jpg" /> </a>
                        </div>
                        <div class="ul-center">
                            <a target="_blank" href="lists.html" class="">Darry Ring 定制</a>
                        </div>
                        <div class="ul-bottom">
                        </div> </li>
                </ul>
                <!--资讯内容的ul end-->
                <!--tab选项卡-->
                <!--tab选项卡ul-->
                <div class="ultab_all">
                    <ul class="ul-tab">
                        <li class=""><span>Forever经典系列</span></li>
                        <li><span>Marry Me系列</span> </li>
                        <li><span>My Heart系列</span> </li>
                        <li><span>True Love系列</span> </li>
                        <li class=""><span style="border: none; width: 196px">I Swear系列</span> </li>
                    </ul>
                    <!--进度条-->
                    <div class="ul_jdt">
                        <div class="ul_jdrun" style="width: 798px;">
                        </div>
                    </div>
                    <!--进度条end-->
                    <!--箭头-->
                    <div class="ul_bkjt" style="left: 766.422px;">
                    </div>
                    <!--箭头end-->
                    <!--箭头-->
                    <div class="ul_bkjt-hover" style="width: 18px; left: 777.104px;">
                    </div>
                    <!--箭头end-->
                </div>
                <!--tab选项卡ul end-->
                <!--tab选项卡下的内容-->
                <ul class="all_tab">
                    <li style="display: none;">
                        <!--tab选项卡下的左边内容-->
                        <div class="tab_left fl">
                            <a href="index.html/dr_series/12_22.html"> <img width="504" height="314" alt="Forever经典系列" src="/statics/images/fimg6.jpg" /> </a>
                        </div>
                        <!--tab选项卡下的左边内容 end-->
                        <!--tab选项卡下的右边内容-->
                        <div class="tab_right fr">
                            <h3> Forever经典系列</h3>
                            <p> 爱如Forever经典的六爪</p>
                            <p> 任时光流逝,唯爱永固,祈岁月静好,唯爱永恒</p>
                            <div class="to_more">
                                <div class="bt2">
                                    <a target="_blank" href="index.html/dr_series/12_22.html">了解更多</a>
                                </div>
                            </div>
                            <!--更多选择-->
                            <div class="more-ul">
                                <p> <a target="_blank" href="/dr_series/12_22.html">求婚钻戒</a> <a target="_blank" href="dr_phonics">结婚对戒</a> <a target="_blank" href="/j_series/22_12.html">饰品</a> </p>
                            </div>
                        </div>
                        <!--tab选项卡下的右边内容  end--> </li>
                    <li style="display: none;">
                        <!--tab选项卡下的左边内容-->
                        <div class="tab_left fl">
                            <a href="/pinkdiamond.aspx"> <img width="504" height="314" alt="Marry Me系列" src="/statics/images/fimg1.jpg" /> </a>
                        </div>
                        <!--tab选项卡下的左边内容 end-->
                        <!--tab选项卡下的右边内容-->
                        <div class="tab_right fr">
                            <h3> Marry Me系列</h3>
                            <p> 承诺相伴一生真爱之人,一生一次，一次一生的爱情信物</p>
                            <p> 7月15日 正午12点浪漫发售</p>
                            <div class="to_more">
                                <div class="bt2">
                                    <a target="_blank" href="/pinkdiamond.aspx">了解更多</a>
                                </div>
                            </div>
                        </div>
                        <!--tab选项卡下的右边内容  end--> </li>
                    <li style="display: none;">
                        <!--tab选项卡下的左边内容-->
                        <div class="tab_left fl">
                            <a href="/dr_series/11_20.html"> <img width="504" height="314" alt="My heart系列" src="/statics/images/fimg2.jpg" /> </a>
                        </div>
                        <!--tab选项卡下的左边内容 end-->
                        <!--tab选项卡下的右边内容-->
                        <div class="tab_right fr">
                            <h3> My heart系列</h3>
                            <p> 将我的心刻入璀璨的钻石 呈献给最爱的你 </p>
                            <p> 此生只愿，把心交给你</p>
                            <div class="to_more">
                                <div class="bt2">
                                    <a target="_blank" href="/dr_series/11_20.html">了解更多</a>
                                </div>
                            </div>
                            <!--更多选择-->
                            <div class="more-ul">
                                <p> <a target="_blank" href="/dr_series/11_20.html">求婚钻戒</a> <a target="_blank" href="dr_phonics"> 结婚对戒</a> <a target="_blank" href="/j_series/20_11.html">饰品</a> </p>
                            </div>
                        </div>
                        <!--tab选项卡下的右边内容  end--> </li>
                    <li style="display: list-item; opacity: 0.470565;">
                        <!--tab选项卡下的左边内容-->
                        <div class="tab_left fl">
                            <a href="/dr_series/16_30.html"> <img width="515" height="314" alt="True Love系列" src="/statics/images/fimg3.jpg" /> </a>
                        </div>
                        <!--tab选项卡下的左边内容 end-->
                        <!--tab选项卡下的右边内容-->
                        <div class="tab_right fr">
                            <h3> True Love系列</h3>
                            <p> 沿袭了欧式古典,圆融了世间美好,绽放女人最温润的内敛</p>
                            <p> 从今往后，将你我恒久岁月,用True Love细细包容</p>
                            <div class="to_more">
                                <div class="bt2">
                                    <a target="_blank" href="/dr_series/16_30.html">了解更多</a>
                                </div>
                            </div>
                            <!--更多选择-->
                            <div class="more-ul">
                                <p> <a target="_blank" href="/dr_series/16_30.html">求婚钻戒</a> <a target="_blank" href="dr_phonics"> 结婚对戒</a> <a target="_blank" href="/j_series/30_16.html">饰品</a> </p>
                            </div>
                        </div>
                        <!--tab选项卡下的右边内容  end--> </li>
                    <li style="opacity: 0.529435; display: list-item;">
                        <!--tab选项卡下的左边内容-->
                        <div class="tab_left fl">
                            <a href="/dr_series/15_18.html"> <img width="504" height="314" alt="I Swear系列" src="/statics/images/fimg4.jpg" /> </a>
                        </div>
                        <!--tab选项卡下的左边内容 end-->
                        <!--tab选项卡下的右边内容-->
                        <div class="tab_right fr">
                            <h3> I Swear系列</h3>
                            <p> 不论顺境逆境、贫穷富贵、健康疾病</p>
                            <p> 将我们的誓言印刻在永恒的钻石上，散发最闪耀的光芒</p>
                            <div class="to_more">
                                <div class="bt2">
                                    <a target="_blank" href="/dr_series/15_18.html">了解更多</a>
                                </div>
                            </div>
                            <!--更多选择-->
                            <div class="more-ul">
                                <p> <a target="_blank" href="/dr_series/15_28.html">求婚钻戒</a> <a target="_blank" href="dr_phonics"> 结婚对戒</a> <a target="_blank" href="/j_series/28_15.html">饰品</a> </p>
                            </div>
                        </div>
                        <!--tab选项卡下的右边内容  end--> </li>
                </ul>
                <!--tab选项卡下的内容  end-->
                <!--推荐款式-->
                <div class="hot-ks">
                    <a class="fr" target="_blank" href="lists.html">更多</a>
                    <span class="other_color" id="renqi"><i>人气最高</i><em></em> </span>
                    <span id="nsza"> <i>女生最爱</i><em></em> </span>
                    <span id="rxph"><i>热销商品</i><em></em> </span>
                </div>
                <!--购买的款式-->
                <div class="cmain">
                    <ul id="ullist" class="buyit">
                        <li>
                            <div class="by_top">
                                <a target="_blank" href="detail.html" rel="nofollow"></a>
                                <div style="opacity:1" class="bything-one">
                                    <img width="236px" height="236px" alt="Forever系列 经典款&nbsp;50分&nbsp;H色" src="/statics/images/2014090119350717386d7a1e.jpg" />
                                </div>
                                <div style="opacity:0" class="bything-two">
                                    <img width="236px" height="236px" src="/statics/images/201409011935072849fe802f.jpg" />
                                </div>
                            </div>
                            <div class="by_center"></div>
                            <div class="by_bottom">
                                <p><a target="_blank" href="detail.html">Forever系列 经典款&nbsp;50分&nbsp;H色</a></p>
                                <p> <span>￥25,700</span><i>销量：5698</i></p>
                            </div></li>
                        <li>
                            <div class="by_top">
                                <a target="_blank" href="detail.html" rel="nofollow"></a>
                                <div style="opacity:1" class="bything-one">
                                    <img width="236px" height="236px" alt="Forever系列 经典款&nbsp;40分&nbsp;D色" src="/statics/images/201409011932585de1c2f2a9.jpg" />
                                </div>
                                <div style="opacity:0" class="bything-two">
                                    <img width="236px" height="236px" src="/statics/images/20140901193258beafcb5eb7.jpg" />
                                </div>
                            </div>
                            <div class="by_center"></div>
                            <div class="by_bottom">
                                <p><a target="_blank" href="detail.html">Forever系列 经典款&nbsp;40分&nbsp;D色</a></p>
                                <p> <span>￥15,800</span><i>销量：2413</i></p>
                            </div></li>
                        <li>
                            <div class="by_top">
                                <a target="_blank" href="detail.html" rel="nofollow"></a>
                                <div style="opacity:1" class="bything-one">
                                    <img width="236px" height="236px" alt="True Love系列 简奢款&nbsp;30分&nbsp;E色" src="images/2014091515351160b3d26880.jpg" />
                                </div>
                                <div style="opacity:0" class="bything-two">
                                    <img width="236px" height="236px" src="images/20140901162336bad2605031.jpg" />
                                </div>
                            </div>
                            <div class="by_center"></div>
                            <div class="by_bottom">
                                <p><a target="_blank" href="detail.html">True Love系列 简奢款&nbsp;30分&nbsp;E色</a></p>
                                <p> <span>￥11,000</span><i>销量：1235</i></p>
                            </div></li>
                        <li>
                            <div class="by_top">
                                <a target="_blank" href="detail.html" rel="nofollow"></a>
                                <div style="opacity:1" class="bything-one">
                                    <img width="236px" height="236px" alt="True Love系列 典雅&nbsp;40分&nbsp;F色" src="/statics/images/201412081512070b82d519cb.jpg" />
                                </div>
                                <div style="opacity:0" class="bything-two">
                                    <img width="236px" height="236px" src="/statics/images/20141208151207e3fa9cdc9e.jpg" />
                                </div>
                            </div>
                            <div class="by_center"></div>
                            <div class="by_bottom">
                                <p><a target="_blank" href="detail.html">True Love系列 典雅&nbsp;40分&nbsp;F色</a></p>
                                <p> <span>￥19,150</span><i>销量：2654</i></p>
                            </div></li>
                    </ul>
                </div>
                <!--款式end-->
            </div>
            <!--新加的百科-->
            <!--新加的百科-->
            <div class="cmain bkbook_all">
                <!--左边一大块-->
                <div class="bkbook_left fl">
                    <!--第一块-->
                    <div class="bkbook_left-first">
                        <!--左边banner图-->
                        <div class="bkleft_img fl">
                            <ul class="bkleft_banner">
                                <li style="display: block;"><a target="_blank" href="/news/4827.html"> <img width="280px" height="180px" alt="小时代4剧情揭秘，杨幂戴DR真爱戒指或唯一存活" src="/statics/images/20150707185244af94e583ea.jpg" /> </a>
                                    <!--提示文字-->
                                    <div class="bnhide">
                                        <!--透明块-->
                                        <div class="banner_opa">
                                        </div>
                                        <!--透明块end-->
                                        <!--透明块里的文字-->
                                        <div class="ban_word">
                                            小时代4剧情揭秘，杨幂戴DR真爱戒指
                                        </div>
                                        <!--透明块里的文字end-->
                                    </div>
                                    <!--提示文字end--> </li>
                                <li style="display: none;"><a target="_blank" href="/news/4825.html"> <img width="280px" height="180px" alt="最浪漫珠宝店Darry Ring7月7日登陆宁波" src="/statics/images/20150707184746fa95671549.jpg" /> </a>
                                    <!--提示文字-->
                                    <div class="bnhide">
                                        <!--透明块-->
                                        <div class="banner_opa">
                                        </div>
                                        <!--透明块end-->
                                        <!--透明块里的文字-->
                                        <div class="ban_word">
                                            最浪漫珠宝店Darry Ring7月7日登陆宁
                                        </div>
                                        <!--透明块里的文字end-->
                                    </div>
                                    <!--提示文字end--> </li>
                                <li style="display: none;"><a target="_blank" href="/news/4316.html"> <img width="280px" height="180px" alt="戴瑞戒指价格知多少 价值连城的一生承诺" src="/statics/images/20150707184853bf1307dd75.jpg" /> </a>
                                    <!--提示文字-->
                                    <div class="bnhide">
                                        <!--透明块-->
                                        <div class="banner_opa">
                                        </div>
                                        <!--透明块end-->
                                        <!--透明块里的文字-->
                                        <div class="ban_word">
                                            戴瑞戒指价格知多少 价值连城的一生
                                        </div>
                                        <!--透明块里的文字end-->
                                    </div>
                                    <!--提示文字end--> </li>
                            </ul>
                            <!--小点-->
                            <div class="small-xd">
                                <span class="bs_dian"></span>
                                <span class=""></span>
                                <span class=""></span>
                            </div>
                            <!--小点end-->
                        </div>
                        <!--左边banner图end-->
                        <!--右边列表-->
                        <ul class="bkfirst_ul">
                            <li class="ts_list"> <h3> <a target="_blank" href="/news/4827.html"> 小时代4剧情揭秘，杨幂戴DR真爱戒指</a></h3> <p> 小时代4剧情即将揭秘!作为《小时代》电影系列大结局的收官之作，《小时代4灵魂...[<a href="/news/4827.html">详情</a>]</p> </li>
                            <li class=""> <h3> <a target="_blank" href="/news/4825.html"> 最浪漫珠宝店Darry Ring7月7日登陆宁</a></h3> <p> 7月7日，是阳历上和七夕节恰巧对应的日子，代表现代的宁波DR族和牛郎织女一样即...[<a href="/news/4825.html">详情</a>]</p> </li>
                            <li class=""> <h3> <a target="_blank" href="/news/4316.html"> 戴瑞戒指价格知多少 价值连城的一生</a></h3> <p> 香港戴瑞珠宝被誉为最浪漫珠宝品牌。然而，戴瑞珠宝更为大众所知晓的名字，其实...[<a href="/news/4316.html">详情</a>]</p> </li>
                        </ul>
                        <!--右边列表end-->
                    </div>
                    <!--第一块end-->
                    <!--第二块-->
                    <div class="bkbook_left-sec">
                        <!--左边ul 求婚相关-->
                        <ul class="bkbook_left-secul">
                            <li><a class="fl" target="_blank" href="/news/3954.html"> 求婚钻戒第一品牌Darry R...</a> <span class="fr"> 2015/7/7</span> </li>
                            <li><a class="fl" target="_blank" href="/news/3534.html"> 求婚钻戒Darry Ring贵在...</a> <span class="fr"> 2015/7/7</span> </li>
                        </ul>
                        <!--左边ul end-->
                        <!--右边ul 求婚相关-->
                        <ul class="bkbook_left-secul bkbook_left-spcul">
                            <li><a class="fl" target="_blank" href="/news/3042.html"> 2015年求婚告白词</a> <span class="fr"> 2015/7/7</span> </li>
                            <li><a class="fl" target="_blank" href="/news/2699.html"> 求婚买多大的钻戒合适?</a> <span class="fr"> 2015/7/7</span> </li>
                        </ul>
                        <!--右边ul end-->
                    </div>
                    <!--第二块end-->
                </div>
                <!--左边一大块end-->
                <!--右边一大块-->
                <div class="bkbook_right fr">
                    <!--第一块-->
                    <div class="bkbook_right-allul">
                        <!--左边图片-->
                        <div class="bkbook_right-fimg fl">
                            <a target="_blank" href="/news/4293.html"> <img width="120" height="72" alt="网上买dr钻戒可不可靠" src="/statics/images/20150527154522510535113e.jpg" /> </a>
                        </div>
                        <!--左边图片end-->
                        <!--右边ul-->
                        <ul class="bkbook_left-secul bkbook_right-spcul">
                            <li><a href="/news/4293.html"> 网上买dr钻戒可不可靠</a> </li>
                            <li><a href="/news/4273.html"> 0.9克拉钻石直径多少</a> </li>
                            <li><a href="/news/4258.html"> 玫瑰金可以做什么用</a> </li>
                        </ul>
                        <!--右边ul end-->
                    </div>
                    <!--第一块end-->
                    <!--第二块-->
                    <div class="bkbook_right-allul">
                        <!--左边图片-->
                        <div class="bkbook_right-fimg fl">
                            <a target="_blank" href="/news/3870.html"> <img width="120" height="72" alt="一克拉钻戒保值" src="images/2015042918212650e2902a39.jpg" /> </a>
                        </div>
                        <!--左边图片end-->
                        <!--右边ul-->
                        <ul class="bkbook_left-secul bkbook_right-spcul">
                            <li><a href="/news/3870.html"> 一克拉钻戒保值</a> </li>
                            <li><a href="/news/2452.html"> 女生如何挑选珠宝首饰?</a> </li>
                            <li><a href="/news/2127.html"> 佩戴珠宝首饰注意事项</a> </li>
                        </ul>
                        <!--右边ul end-->
                    </div>
                    <!--第二块end-->
                    <!--第三块-->
                    <div class="bkbook_right-allul">
                        <!--左边图片-->
                        <div class="bkbook_right-fimg fl">
                            <a target="_blank" href="/news/4547.html"> <img width="120" height="72" alt="陆烧林萧求婚戒指是什么" src="/statics/images/2015061813430589cb642ca7.jpg" /> </a>
                        </div>
                        <!--左边图片end-->
                        <!--右边ul-->
                        <ul class="bkbook_left-secul bkbook_right-spcul">
                            <li><a href="/news/4547.html"> 陆烧林萧求婚戒指是什么</a> </li>
                            <li><a href="/news/4354.html"> 婚戒一般尺寸</a> </li>
                            <li><a href="/news/4322.html"> 求婚戒指戴哪个手指比较好</a> </li>
                        </ul>
                        <!--右边ul end-->
                    </div>
                    <!--第三块end-->
                </div>
                <!--右边一大块end-->
            </div>
            <!--新加的百科end-->
            <!--新加的百科end-->
        </div>
    </div>
    <!--底部-->
    <div class="footer">
        <div style="clear:both"></div>

        <!--条文-->
        <div class="auto" id="Menu_Service">
        </div>
        <div class="tw-foot">
            <div class="auto" id="Copyright">
                <p> Copyright &copy; 2006-2015 www.darryring.com 深圳市戴瑞珠宝有限公司 All Rights Reserved. 粤ICP备11012085号-2.ICP经营许可证粤B2-20140279 </p>
                <p> 中国互联网违法信息举报中心 | 中国公安网络110报警服务 | 本网站提供所售商品的正式发票 </p>
            </div>
        </div>
    </div>
    </div>
    <div class="model" id="model">
        <div class="Prompt" id="Prompt">
        </div>
        <span id="log_uid" style="display:none"></span>
        <span id="log_uname" style="display:none"></span>
        <span id="log_orderid" style="display:none"></span>
        <span id="log_price" style="display:none"></span>
    </div>
    <!--   <script src="http://wpa.b.qq.com/cgi/wpa.php" charset="utf-8" type="text/javascript"></script> -->
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
                <a href="javascript:NTKF.im_openInPageChat()"> <img width="75" height="37" src="/statics/images/zx.jpg" /></a>
            </div>
        </div>
        <div class="fkf_bottom">
            <img width="92" height="82" alt="Darry Ring 官方微信" src="/statics/images/to_erwei.jpg" />
            <a href="#"> <img width="92" height="26" src="/statics/images/db.jpg" /></a>
        </div>
    </div>

    </div>
    <script type="text/javascript">
        function showbox(id) {
            getQeestion(id);
            for (var i = 1; i <= 8; i++) {
                if (i == id) {
                    showdiv(id);
                }
                else {
                    hidediv(i);
                }
            }
        }
        function contenttxt(id, sid) {
            for (var i = 1; i <= 7; i++) {
                if (i == id) {
                    showtxt(id, sid);
                }
                else {
                    hidetxt(i, sid);
                }
            }


        }
        function showtxt(id, sid) {
            var objtitle = $("#content_title" + id + "_" + sid);

            if (objtitle.css("display") == "none") {
                objtitle.show("fast");
            }
            else {

                hidetxt(id, sid);
            }
            //$("#"+id).show("fast");
        }
        function hidetxt(id, sid) {
            var objtitle = $("#content_title" + id + "_" + sid);
            objtitle.hide("fast");
        }
        function hidediv(id) {
            $("#box" + id).hide("fast");

            $("#li" + id).css({ "font-size": "14px", "color": "#7d7d7d" });
        }

        function showdiv(id) {
            if ($("#box" + id).css("display") == "none") {
                $("#box" + id).show("fast");
                $("#li" + id).css({ "font-size": "18px", "color": "#000000" });
            }

        }

    </script>
    <script type="text/javascript">
        function showMask() {
            $("#masks").css("height", $(document).height());
            $("#masks").css("width", $(document).width());
            $("#masks").fadeIn();
        }
        function showModel(divName) {
            showMask();
            /* var top = ($(window).height() - $(divName).height()) / 5;
             var left = ($(window).width() - $(divName).width()) / 2;
             var scrollTop = $(document).scrollTop();
             var scrollLeft = $(document).scrollLeft();*/
            $(divName).fadeIn();
        }
        function CloseMaskser() {

            $("#modelsever").fadeOut("slow");
            $("#masks").fadeOut("slow");
            $("#mask").fadeOut("slow");
        }

    </script>

</body>
</html>