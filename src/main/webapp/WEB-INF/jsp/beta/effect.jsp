<%--
  Created by IntelliJ IDEA.
  User: zxbangban
  Date: 2017/11/23
  Time: 15:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/effect.css">
    <script src="http://meitu.qizuang.com/assets/common/js/jquery.min.js"></script>
</head>
<body>
<div class="content">
    <div class="container">
        <div class="con">
            <div class="conLeft">
                <ul class="zx_list">
                    <li>
                        <div class="zx_title">
                            <p>空间</p>
                            <p>HOME</p>
                        </div>
                        <div class="zx_con">
                            <ul>
                                <li><a href="">客厅</a></li>
                                <li><a href="">餐厅</a></li>
                                <li><a href="">卧室</a></li></ul>
                            <ul>
                                <li><a href="">厨房</a></li>
                                <li><a href="">阳台</a></li>
                                <li><a href="">卫生间</a></li></ul>
                        </div>
                        <div class="more">
                            <ul>
                                <li><a href="">儿童房</a></li>
                                <li><a href="">飘窗</a></li>
                                <li><a href="">鞋柜</a></li>
                                <li><a href="">书房</a></li>
                            </ul>
                            <ul>
                                <li><a href="">国道</a></li>
                                <li><a href="">衣帽间</a></li>
                                <li><a href="">花园</a></li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <div class="zx_title">
                            <p>风格</p><p>STYLE</p>
                        </div>
                        <div class="zx_con">
                            <ul>
                                <li><a href="">中式</a></li>
                                <li><a href="">田园</a></li>
                                <li><a href="">现代</a></li></ul>
                            <ul>
                                <li><a href="">简约</a></li>
                                <li><a href="">简欧</a></li>
                                <li><a href="">古典</a></li></ul>
                        </div>
                        <div class="more">
                            <ul>
                                <li><a href="">复式</a></li>
                                <li><a href="">地中海</a></li>
                                <li><a href="">美式</a></li>
                                <li><a href="">新古典</a></li>
                            </ul>
                            <ul>
                                <li><a href="">日式</a></li>
                                <li><a href="">乡村</a></li>
                                <li><a href="">混搭</a></li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <div class="zx_title">
                            <p>户型</p><p>TYPE</p>
                        </div>
                        <div class="zx_con">
                            <ul>
                                <li><a href="">一居</a></li>
                                <li><a href="">二居</a></li>
                                <li><a href="">三局</a></li></ul>
                            <ul>
                                <li><a href="">大户型</a></li>
                                <li><a href="">别墅</a></li>
                                <li><a href="">复式楼</a></li></ul>
                        </div>
                        <div class="more">
                            <ul>
                                <li><a href="">小户型</a></li>
                                <li><a href="">跃层</a></li>
                                <li><a href="">70㎡</a></li>
                            </ul>
                            <ul>
                                <li><a href="">100㎡</a></li>
                                <li><a href="">110㎡</a></li>
                                <li><a href="">120㎡</a></li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <div class="zx_title">
                            <p>色彩</p><p>COLOR</p>
                        </div>
                        <div class="zx_con">
                            <ul>
                                <li><a href="">纯情白色</a></li>
                                <li><a href="">中性冷色</a></li>
                                <li><a href="">明亮黄色</a></li></ul>
                            <ul>
                                <li><a href="">温暖橙色</a></li>
                                <li><a href="">浪漫分红</a></li>
                                <li><a href="">中性暖色</a></li></ul>
                        </div>
                        <div class="more">
                            <ul>
                                <li><a href="">动感绿色</a></li>
                                <li><a href="">海洋蓝色</a></li>
                                <li><a href="">神秘紫色</a></li>
                            </ul>
                            <ul>
                                <li><a href="">沉稳深色</a></li>
                                <li><a href="">缤纷彩色</a></li>

                            </ul>
                        </div>
                    </li>
                    <li>
                        <div class="zx_title">
                            <p>推荐</p><p>SPECIAL</p>
                        </div>
                        <div class="zx_con">
                            <ul>
                                <li><a href="">宜家</a></li>
                                <li><a href="">都市</a></li>
                                <li><a href="">大户型</a></li></ul>
                            <ul>
                                <li><a href="">小户型</a></li>
                                <li><a href="">北欧</a></li>
                                <li><a href="">80㎡</a></li></ul>
                        </div>
                        <div class="more">
                            <ul>
                                <li><a href="">田园</a></li>
                                <li><a href="">厨房</a></li>
                                <li><a href="">餐厅背景墙</a></li>
                            </ul>
                            <ul>
                                <li><a href="">儿童房</a></li>
                                <li><a href="">酒柜</a></li>
                                <li><a href="">120平方米</a></li>
                            </ul>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="conRight" id="banner">
                <div class="htmleaf-container">
                    <div class="carousel">
                        <figure>
                            <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/home/webstylebanner.png" alt="">
                            <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/home/webstylebanner.png" alt="">
                            <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/home/webstylebanner.png" alt="">
                            <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/home/webstylebanner.png" alt="">
                            <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/home/webstylebanner.png" alt="">
                            <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/home/webstylebanner.png" alt="">
                            <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/home/webstylebanner.png" alt="">
                            <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/home/webstylebanner.png" alt="">
                        </figure>
                        <nav>
                            <button class="nav prev">上一个</button>
                            <button class="nav next">下一个</button>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
<script type="text/javascript">
    'use strict';

    window.addEventListener('load', function () {
        var carousels = document.querySelectorAll('.carousel');

        for (var i = 0; i < carousels.length; i++) {
            carousel(carousels[i]);
        }
    });


    function carousel(root){
        var figure = root.querySelector('figure'),
            nav = root.querySelector('nav'),
            images = figure.children,
            n = images.length,
            gap = root.dataset.gap || 0,
            bfc = 'bfc' in root.dataset,
            theta = 2 * Math.PI / n,
            currImage = 0;

        setupCarousel(n, parseFloat(getComputedStyle(images[0]).width));
        window.addEventListener('resize', function () {
            setupCarousel(n, parseFloat(getComputedStyle(images[0]).width));
        });

        setupNavigation();

        function setupCarousel(n, s) {
            var apothem = s / (2 * Math.tan(Math.PI / n));

            figure.style.transformOrigin = '50% 50% ' + -apothem + 'px';

            for (var i = 0; i < n; i++) {
                images[i].style.padding = gap + 'px';
            }for (i = 1; i < n; i++) {
                images[i].style.transformOrigin = '50% 50% ' + -apothem + 'px';
                images[i].style.transform = 'rotateY(' + i * theta + 'rad)';
            }
            if (bfc) for (i = 0; i < n; i++) {
                images[i].style.backfaceVisibility = 'hidden';
            }rotateCarousel(currImage);
        }

        function setupNavigation() {
            nav.addEventListener('click', onClick, true);

            function onClick(e) {
                e.stopPropagation();

                var t = e.target;
                if (t.tagName.toUpperCase() != 'BUTTON') return;

                if (t.classList.contains('next')) {
                    currImage++;
                } else {
                    currImage--;
                }

                rotateCarousel(currImage);
            }
        }

        function rotateCarousel(imageIndex) {
            figure.style.transform = 'rotateY(' + imageIndex * -theta + 'rad)';
        }
    }
</script>

