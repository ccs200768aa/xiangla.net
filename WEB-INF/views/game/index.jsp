<%@ page pageEncoding="UTF-8"%>
<%@ include file="../include/top.jsp" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="../resources/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="../resources/css/game.css"/>
</head>
<body>
    <header id="nav">
        <div class="head">
            <div class="logo fl"></div>
            <nav class="fr">
                <ul class="nav navbar">
                    <li><a href="#">首页</a></li>
                    <li><a href="#">游戏</a></li>
                    <li><a href="#">市场</a> </li>
                    <li><a href="#">个人</a></li>
                    <li><a href="#">中心</a></li>
                    <li><a href="#">关于</a></li>
                    <li><a href="#">我们</a></li>
                    <li><a href="#">案例</a></li>
                    <li><a href="#">展示</a></li>
                    <li><a href="#">帮助</a></li>
                    <li><a href="#">中心</a></li>
                    <li><a href="#">新闻</a></li>
                    <li><a href="#">中心</a></li>
                </ul>
            </nav>
            <div class="clearfix"></div>
        </div>
    </header>

    <div id="bread-crumb">
        <span><a>首頁</a>/<a>游戏</a></span>
    </div>

    <div id="banner">
        <div id="recommond">
            <div class="recommond-item fl">
                <div class="picframe fl">
                    <a href=""><img src="../resources/img/recommond1.png" alt="图片1" width="220" height="220"/></a>
                </div>
                <div class="infoframe fl">
                    <h3>游戏名</h3>
                    <p><span class="cgrey">双十二</span><span class="cred">/ </span>汽车<span class="cred"> /</span><span class="cgreen"> 金融</span><span class="cred"> / </span> <span class="cblue">旅游</span></p>
                    <p>休闲、敏捷</p>
                    <div>最好玩的双十二游戏</div>
                    <button>免费试玩</button>
                </div>
            </div>
            <div class="recommond-item fl">
                <div class="picframe fl">
                    <a href=""><img src="../resources/img/recommond1.png" alt="图片1" width="220" height="220"/></a>
                </div>
                <div class="infoframe fl">
                    <h3>游戏名</h3>
                    <p><span class="cgrey">双十二</span><span class="cred">/ </span>汽车<span class="cred"> /</span><span class="cgreen"> 金融</span><span class="cred"> / </span> <span class="cblue">旅游</span></p>
                    <p><span class="cgrey">休闲、敏捷</span></p>
                    <div>最好玩的双十二游戏</div>
                    <button>免费试玩</button>
                </div>
            </div>
        </div>
    </div>
    <div class="clearfix"></div>
    <div id="search">
        <div id="search-box">
            <div class="search-item">
            <ul>
                <li class="cgrey">所有</li>
                <li class="cgrey">化妆品</li>
                <li class="cgrey">酒店</li>
                <li class="cgrey">餐饮</li>
                <li class="cgrey">汽车</li>
                <li class="cgrey">旅游</li>
                <li class="cgrey">金融</li>
                <li class="cgrey">电商</li>
                <li class="cgrey">教育</li>
                <li class="cgrey">商城</li>
            </ul>
            </div>
        </div>
    </div>

    <div id="line1"></div>

    <div id="content">
        <div id="sort">
            <a href="">综合排序</a>
            <a href="">人气</a>
            <a href="">上架时间</a>
            <div class="search-input-group fr">
                <input type="text" class="search-input"/>
                <button ><img src="../resources/img/search.png" width="20px" height="20px"></button>
            </div>
        </div>
        <div class="clearfix"></div>
        <div id="game-list" >
            <div class="game-item col-sm-3" >
                <div class="picframe">
                    <a href="<%=basePath%>game/play"><img src="../resources/img/doudizhu.png" alt="" width="220px" height="220px"/></a>
                </div>
                <div class="infoframe">
                <h3>斗地主</h3>
                <p>情人节<span class="cred"> / </span><span class="cgreen">餐饮 </span><span class="cred">/</span> 酒店</p>
                <p>热度：<span class="cred">1870</span></p>
                <p>休闲、恶搞、搞笑、反应</p>
                    <button>免费试玩</button>
                </div>
            </div>
            <div class="col-sm-3 game-item" >
                <div class="picframe">
                    <a href=""><img src="../resources/img/game.jpg" alt="" width="220px" height="220px"/></a>
                </div>
                <div class="infoframe">
                    <h3>棒打单身狗</h3>
                    <p>情人节<span class="cred"> / </span><span class="cgreen">餐饮 </span><span class="cred">/</span> 酒店</p>
                    <p>热度：<span class="cred">1870</span></p>
                    <p>益智、恶搞、搞笑、反应</p>
                    <button>免费试玩</button>
                </div>
            </div>
            <div class="game-item col-sm-3" >
                <div class="picframe">
                    <a href=""><img src="../resources/img/game.jpg" alt="" width="220px" height="220px"/></a>
                </div>
                <div class="infoframe">
                    <h3>棒打单身狗</h3>
                    <p>情人节<span class="cred"> / </span><span class="cgreen">餐饮 </span><span class="cred">/</span> 酒店</p>
                    <p>热度：<span class="cred">1870</span></p>
                    <p>益智、恶搞、搞笑、反应</p>
                    <button>免费试玩</button>
                </div>
            </div>
            <div class="game-item col-sm-3" >

            </div>
            <div class="game-item col-sm-3">

            </div>
            <div class="game-item col-sm-3" >

            </div>


        </div>
    </div>

    <div id="footer">
            <p style="">XiangLa&copy版权所有</p>
    </div>
</body>
</html>