<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/15
  Time: 12:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>江西联合股权交易中心</title>
    <style>
        body, div, span, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, code, del, dfn, em, img, q, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td, article, aside, dialog, figure, footer, header, hgroup, nav, section {
            margin: 0;
            padding: 0;
            border: 0;
            font-size: 100%;
            vertical-align: baseline;
        }

        html {
            position: relative;
        }

        html, body {
            height: 100%;
        }

        .container-box {
            box-sizing: border-box;
        }

        .container-main {
            overflow: hidden;
            zoom: 1;
        }

        .col-left {
            width: 200px;
            line-height: 45px;
            border-top: 0;
            border-left: 0;
        }

        .col-right {
            border-left: 1px solid #dad9de;
            min-height: 570px;
            float: right;
            margin-left: -100%;
            width: 997px;
        }

        .select2-container--default .select2-results__option[aria-selected=true] {
            background-color: #DCDCDC;
            color: inherit;
        }

        .select2-container--default .select2-results__option[aria-selected=true] .tag {
            color: gray;
            opacity: 1;
        }

        .jui-btn.jui-btn-blue {
            background-color: #108ee9;
            border-color: #108ee9;
        }
    </style>
    <style type="text/css">
        .body {
            background-color: #fff;
            padding: 0;
        }

        .jui-tip#J_error {
            z-index: 1003;
        }
    </style>
</head>
<body>
<div>
    <style>
        body {
            position: relative;
        }

        @font-face {
            font-family: 'newIcon';
            src: url('//at.alicdn.com/t/font_1468928161_252794.eot'); /* IE9*/
            src: url('//at.alicdn.com/t/font_1468928161_252794.eot?#iefix') format('embedded-opentype'), /* IE6-IE8 */ url('//at.alicdn.com/t/font_1468928161_252794.woff') format('woff'), /* chrome¡¢firefox */ url('//at.alicdn.com/t/font_1468928161_252794.ttf') format('truetype'), /* chrome¡¢firefox¡¢opera¡¢Safari, Android, iOS 4.2+*/ url('//at.alicdn.com/t/font_1468928161_252794.svg#iconfont') format('svg'); /* iOS 4.1- */
        }

        .newIcon {
            font-family: 'newIcon';
        }

        ul {
            list-style: none;
            /*border:solid 1px #000;*/
        }

        .fn-opacity {
            opacity: 0;
        }

        .ft-up:after {
            font-family: newIcon;
            content: "\e615";
        }

        .ft-down:after {
            font-family: newIcon;
            content: "\e616";
        }

        .fn-clear:after {
            content: '\20';
            display: block;
            height: 0;
            clear: both;
        }

        .fn-center {
            display: -ms-flex;
            display: -webkit-flex;
            display: flex;
            -ms-flex-align: center;
            -webkit-align-items: center;
            -webkit-box-align: center;
            align-items: center;
        }

        .fn-hide {
            display: none;
        }

        .fn-left {
            float: left;
        }

        .ft-right {
            text-align: right;
        }

        .fn-bottom {
            border-bottom: solid 1px #fff;
            padding-bottom: 10px;
            margin-bottom: 10px;
        }

        #openhomeHeader .fn-bd {
            border: solid 1px #f00;
        }

        /*start btn*/

        /*end btn*/

        /*start head*/
        /*start header */
        #openhomeHeader.header-content {
            position: absolute;
            text-align: right;
            height: auto;
            width: 100%;
            /*min-width: 1440px;*/
            z-index: 1002;
            background: rgba(0, 0, 0, 0);

            transition: all .7s;
            -moz-transition: all .7s;
            -webkit-transition: all .7s;
            -o-transition: all .7s;
        }

        #openhomeHeader.header-content.fn-bg {
            /*background:rgba(0,0,0,0.5);*/
        }

        #openhomeHeader.header-content.fixed {
            position: relative;
        }

        #openhomeHeader.header-content.fixed .account-center {
            background: #242735;
        }

        #openhomeHeader .mainBox {
            width: 1200px;
            margin: auto;
            position: relative;
        }

        #openhomeHeader .header-account-box {
            /*right: 112px;*/
            right: 0px;
            position: absolute;;
            z-index: 1100;
        }

        #openhomeHeader .header-account-box .inner a {
            color: #fff;
            font-size: 12px;
            opacity: .6;
            line-height: 1.1;
            margin-top: 3px;
            /*color\0: #aaa9ae;*/
        }

        #openhomeHeader .header-account-box .inner > li > span {
            color: #fff;
            font-size: 12px;
            opacity: .6;
            /*color\0: #aaa9ae;*/
        }

        #openhomeHeader .header-account-box .inner a:hover {
            opacity: 1;
        }

        #openhomeHeader .customer-service a {
            opacity: 1;
            display: block;
            margin-top: 6px;
        }

        #openhomeHeader .customer-service a:hover {
            text-decoration: underline;
        }

        #openhomeHeader .header-account-box .inner {
            width: 100%;
            padding-top: 2px;
        }

        #openhomeHeader .header-account-box .inner li:nth-child(1) {
            border-left: 0;
            margin-left: 0;
            padding-left: 0;

        }

        #openhomeHeader .header-account-box .inner li {
            float: left;
            font-size: 12px;
            text-align: center;
        }

        #openhomeHeader .header-account-box .inner li .account-meta.first {
            border-left-width: 0px;

        }

        #openhomeHeader.header-content .account-meta {
            color: #fff;
            padding-left: 10px;
            padding-right: 10px;
        }

        #openhomeHeader.header-content .account-center {
            padding: 6px 0px 6px 0px;
            height: 17px;
            box-sizing: content-box;
        }

        #openhomeHeader.fixed .account-center {
            padding: 2px 0px 6px 0px;
            height: 20px;

        }

        #openhomeHeader .account-center-bg {
            background: #242735;
        }

        #openhomeHeader .account-meta, .notice span {
            display: inline-block;
            font-size: 12px;
        }

        #openhomeHeader #J_qrcode {
            height: 13px;
            margin-top: 4px;
        }

        #openhomeHeader .inner .login-qrcode {
            font-size: 22px;
            /* border: solid 1px; */
            position: relative;
            top: -11px;
            opacity: .6;
        }

        #openhomeHeader .inner .login-qrcode:hover {
            opacity: 1;
        }

        #openhomeHeader .qrcode-icon {
            vertical-align: top;
            margin-left: 10px;
            margin-top: 1px;
            width: 16px;
        }

        #openhomeHeader .qrcode:hover .qrcode-div {
            display: block;
            zoom: 1
        }

        #openhomeHeader .qrcode-icon {
            vertical-align: top;
            margin-left: 10px;
            margin-top: 1px;
            width: 16px
        }

        #openhomeHeader .qrcode-div {
            position: absolute;
            right: -20px;
            top: 34px;
            text-align: center;
            width: 110px;
            display: none;
            z-index: 1101;
            zoom: 1
        }

        #openhomeHeader .qrcode-div:after, #openhomeHeader .qrcode-div:before {
            content: "";
            position: absolute;
            margin-top: -6px;
            display: inline-block;
            width: 0;
            height: 0;
            border-width: 0 6px 6px;
            border-style: dashed dashed solid;
            border-color: transparent;
            left: 66%;
            margin-left: -6px
        }

        #openhomeHeader .qrcode-div:before {
            border-bottom-color: #e6e7ec;
            top: 0
        }

        #openhomeHeader .qrcode-div:after {
            border-bottom-color: #fff;
            top: 1px
        }

        #openhomeHeader .qrcode-inner {
            padding: 5.5px 12px;
            border: 1px solid #e6e7ec;
            line-height: 21px;
            background-color: #fff;
            word-wrap: break-word;
            word-break: break-all
        }

        #openhomeHeader .txt-qrcode {
            color: #222;
        }

        #openhomeHeader .customer-service-li {
            width: 80px;
            text-align: center;
            /*max-width: 58px;*/

        }

        #openhomeHeader .customer-service-title .account-meta {
            /*transform:scale(0.2);*/
            opacity: 0.6;
            line-height: 1.1;
        }

        #openhomeHeader .customer-service {
            width: 115px;
            /*height:200px;*/
            position: relative;;
            z-index: 1100;
            margin-top: 5px;
            margin-left: 8px;
            background: #242735;
            text-align: left;
            padding: 10px 35px 10px 15px;;
            opacity: 0.8;
            color: #fff;
        }

        /*end login*/
        #openhomeHeader .menu-content {
            /*min-width: 1440px;*/
            color: #fff;
            transition: background 3s, color 1s;
            -moz-transition: background 3s, color 1s;
            -webkit-transition: background 3s, color 1s;
            -o-transition: background 3s, color 1s;

        }

        #openhomeHeader.header-content.fixed .menu-content {
            background: #fff;
            color: #242735;

        }

        #openhomeHeader.header-content.fixed .menu-content a {
            color: #242735;
        }

        #openhomeHeader.header-content.fixed .menu-content .selected a {
            color: #108ee9;
        }

        #openhomeHeader .antLogo {
            width: 219px;
            height: 58px;
            float: left;

        }

        #openhomeHeader.header-content.fixed .menu-content .antLogo {
            width: 219;
            height: 58px;
            float: left;
            margin-top: 6px;
        }

        #openhomeHeader .antLogo .antLogoImg {
            margin-top: 1.0em
        }

        #openhomeHeader .nav-menu {
            float: right;
            margin-top: 26px;
        }

        #openhomeHeader .nav-menu a {
            color: #fff;
            text-decoration: none;
        }

        #openhomeHeader .nav-menu ul {
            font-size: 16px;
        }

        #openhomeHeader .nav-menu li {
            float: left;
            padding-bottom: 19px;
        }

        #openhomeHeader .nav-menu li div {
            padding-left: 20px;
            padding-right: 20px;
        }

        #openhomeHeader.header-content.fixed .nav-menu .menu-item {
            opacity: 1;
        }

        #openhomeHeader .nav-menu .menu-item {
            opacity: 0.6;
        }

        #openhomeHeader .nav-menu .menu-item .fn-arrow {
            padding-right: 12px;
        }

        #openhomeHeader .nav-menu .menu-item .fn-arrow:after {
            content: "";
            background: url("https://zos.alipayobjects.com/rmsportal/PkNfEvgvsfgdlDX.png") no-repeat;
            background-size: 100% 100%;
            vertical-align: middle;
            margin-left: 5px;
            width: 8px;
            height: 4px;
            display: inline-block;
        }

        #openhomeHeader .nav-menu .menu-item.selected .fn-arrow:after, #openhomeHeader .nav-menu .menu-item.mouseover .fn-arrow:after {
            background-image: url("https://zos.alipayobjects.com/rmsportal/xwkHInEEorhkKEP.png");
        }

        #openhomeHeader .nav-menu li.lastChild {
            padding-left: 0px;
            padding-right: 0px;
        }

        #openhomeHeader .nav-menu li.lastChild div {
            padding-left: 40px;
            border-left: solid 1px #fff;
        }

        #openhomeHeader.header-content.fixed .menu-content .nav-menu li.lastChild div {
            padding-left: 40px;
            border-left: solid 1px #D3D3D3;
        }

        #openhomeHeader .nav-menu .menu-item.selected {
            opacity: 1;
            border-bottom: solid 2px #fff;
        }

        #openhomeHeader.header-content.fixed .menu-content .nav-menu .selected {
            color: #108EE9;
            border-bottom: solid 2px #108EE9;

        }

        #openhomeHeader.header-content.fixed .nav-menu .menu-item.mouseover a {
            color: #108EE9;
        }

        #openhomeHeader .nav-menu .menu-item.mouseover {
            opacity: 1;
            /*border-bottom:solid 2px #fff;*/
        }

        #openhomeHeader .nav-menu li.lastChild.mouseover div {
            border-color: rgba(256, 256, 256, .6);
        }

        .header-content.fixed .child-menu-content {
            color: #1a1a1a;
            /*border-top:solid 2px #F7F7FA;*/
        }

        #openhomeHeader .child-menu-content {
            /*background: #f00;*/
            /*height: 449px;*/
            width: 100%;
            /*min-width: 1440px;*/
            /*position: absolute;*/
            /*z-index: 90;*/
            color: #fff;
            font-size: 16px;

            /*display: none;*/
        }

        #openhomeHeader .child-menu-content .mask-content {
            background: #000000;
            opacity: 0.5;
            width: 100%;
            height: 449px;
            position: absolute;
            z-index: 1100;
        }

        #openhomeHeader.header-content.fixed .child-menu {
            text-shadow: none;
            position: relative;

        }

        #openhomeHeader .child-menu {
            position: relative;
            z-index: -1;
            width: 100%;
            text-shadow: 0px 0px 0px #000;
        }

        /*end solve-child-menu*/
        #openhomeHeader.header-content.fixed .child-menu .solve-div {
            border-top: solid 2px #F7F7FA;
            position: absolute;
            /*border:solid 2px #f00;*/

        }

        #openhomeHeader .child-menu .solve-div {
            padding: 164px 0px 0px 0px;
            height: 400px;
            position: absolute;;
        }

        #openhomeHeader.fixed .child-menu .solve-div {
            padding-top: 64px;
        }

        #openhomeHeader .child-menu-item, #openhomeHeader.fixed .child-menu-item.solve-div {
            position: absolute;
            width: 100%;
            top: 0px;
        }

        #openhomeHeader .child-menu-item.solve-div {
            top: -100px;
        }

        #openhomeHeader .child-menu-item a {
            text-decoration: none;
        }

        #openhomeHeader .solve-div.fn-topM {
            display: none;
        }

        #openhomeHeader .demo-div.fn-topM {
            display: none;
            ?
        }

        #openhomeHeader .document-div.fn-topM {
            display: none;
        }

        #openhomeHeader.header-content.fixed .solve-div .mask-item {
            background: #fff;
            opacity: 1;
            border-bottom: 1px solid #eaebef;
        }

        #openhomeHeader .solve-div .mask-item {
            width: 100%;
            height: 556px;
            position: absolute;
            z-index: 1100;
            background: #000;
            opacity: .5;
            top: 0px;
            left: 0px;
        }

        #openhomeHeader.fixed .solve-div .mask-item {
            height: 456px;
        }

        #openhomeHeader .solve-child-menu {
            position: relative;
            padding-left: 25px;
            z-index: 1200;
            width: 1200px;
            margin: auto;
        }

        #openhomeHeader .solve-child-menu .solve-child-menu-item {
            float: left;
            text-align: left;
        }

        #openhomeHeader .solve-child-menu .pd-left {
            padding-left: 107px;
        }

        #openhomeHeader .solve-child-menu .menu-item-icon {
            opacity: 0.8;
        }

        #openhomeHeader .solve-child-menu .menu-item-icon img {
            height: 32px;
            text-align: left;
        }

        #openhomeHeader.header-content.fixed .menu-item-title {
            color: #6D7C8F;
        }

        #openhomeHeader .solve-child-menu .menu-item-title {
            opacity: 0.7;
        }

        #openhomeHeader.fixed .solve-child-menu .menu-item-title {
            opacity: 0.7;
        }

        #openhomeHeader.header-content.fixed .solve-child-menu .pay-menu .menu-item-title, #openhomeHeader.header-content.fixed .solve-child-menu .life-menu .menu-item-title, #openhomeHeader.header-content.fixed .solve-child-menu .public-menu .menu-item-title {
            border-bottom: solid 2px rgba(201, 209, 218, 0.6);
        }

        #openhomeHeader .solve-child-menu-item ul {
            padding-top: 30px;
        }

        #openhomeHeader .solve-child-menu-item li {
            float: left;
            padding-bottom: 18px;
        }

        #openhomeHeader .solve-child-menu-item.life-menu, .solve-child-menu-item.public-menu {
            padding-left: 107px;
        }

        #openhomeHeader .solve-child-menu-item.pay-menu ul {
            width: 200px;
        }

        #openhomeHeader .solve-child-menu-item.pay-menu li {
            float: left;
            width: 100px;
            padding-bottom: 18px;
        }

        #openhomeHeader .solve-child-menu-item.life-menu ul {
            width: 361px;
        }

        #openhomeHeader .solve-child-menu-item.life-menu li {
            width: 25%;
        }

        #openhomeHeader .solve-child-menu-item.public-menu ul {
            width: 397px;
        }

        #openhomeHeader .solve-child-menu-item.public-menu li {
            width: 25%;
        }

        #openhomeHeader .solve-child-menu .pay-menu .menu-item-title {
            padding-top: 16px;
            padding-bottom: 13px;
            width: 200px;
            border-bottom: solid 1px #fff;
        }

        #openhomeHeader .solve-child-menu .life-menu .menu-item-title {
            padding-top: 16px;
            padding-bottom: 13px;
            width: 359px;
            border-bottom: solid 1px #fff;
        }

        #openhomeHeader .solve-child-menu .public-menu .menu-item-title {
            padding-top: 16px;
            padding-bottom: 13px;
            width: 397px;
            border-bottom: solid 1px #fff;
        }

        /*.solve-child-menu-item table{
  margin-top: 31px;
  width: 100%;
}
.solve-child-menu-item table td{
  padding-bottom: 18px;
  min-width: 60px;
  cursor: pointer;
}*/
        #openhomeHeader .solve-child-menu-item li a {
            color: #fff;
        }

        #openhomeHeader .solve-child-menu-item li a:hover {
            text-decoration: underline;
        }

        #openhomeHeader.header-content.fixed .solve-child-menu-item li a {
            color: #1a1a1a;
        }

        #openhomeHeader.header-content.fixed .solve-child-menu-item li a:hover {
            color: #108EE9;
        }

        /*.header-content.fixed .solve-child-menu-item table td:hover{
  color:#108EE9;
}*/
        /*end solve-child-menu*/

        /*start demo-child-menu*/
        #openhomeHeader .demo-child-menu {
            height: 88px;
            text-align: center;
            /*border:solid 1px #f00;*/
        }

        #openhomeHeader.header-content.fixed .demo-div .mask-item {
            /*background:#fff;*/
            /*opacity: 1;*/
        }

        #openhomeHeader .demo-div .mask-item {
            width: 100%;
            height: 88px;
            position: absolute;
            z-index: 1100;
            background: #000;
            opacity: .5;
        }

        #openhomeHeader .demo-child-menu .demo-child-content {
            position: relative;

            z-index: 1200;
            padding-top: 21px;
            padding-bottom: 6px;
            display: inline-block;
        }

        #openhomeHeader .demo-child-menu .demo-child-content li.selected {
            float: left;
            padding: 0px 46px;
            cursor: pointer;
        }

        #openhomeHeader .demo-child-menu .demo-child-content li {
            float: left;
            padding: 0px 46px;
            cursor: pointer;
        }

        #openhomeHeader .demo-child-menu .demo-child-content li a {
            color: #fff;
            text-decoration: none;
        }

        #openhomeHeader .demo-child-content img {
            width: 28px;
            height: 26px;
        }

        #openhomeHeader .demo-child-menu .demo-child-content .menu-item-title {
            padding-top: 6px;
            padding-bottom: 6px;
            font-size: 16px;
            line-height: 22px;
        }

        #openhomeHeader .demo-child-menu .demo-child-content .selected .menu-item-title {
            border-bottom: solid 1px #fff;

        }

        #openhomeHeader .icon-w {
            display: block;
        }

        #openhomeHeader .icon-b {
            display: none;
        }

        #openhomeHeader.header-content.fixed .icon-w {
            display: none;
        }

        #openhomeHeader.header-content.fixed .icon-b {
            display: block;
        }

        /*end demo-child-menu*/
        /*start doc-child-menu*/
        #openhomeHeader .document-child-menu {
            position: relative;
            z-index: 1200;
            /*margin-right: 505px;*/
            width: 1200px;
            margin: auto;
        }

        #openhomeHeader.header-content.fixed .doc-ul li {
            background: #fff;
        }

        #openhomeHeader.header-content.fixed .doc-ul:before {
            border-bottom: 10px solid #fff;
            width: 10px;
            height: 10px;
            background: #fff;
            border: solid #D3DBE1;
            border-width: 1px 0px 0px 1px;
            margin: auto;
            position: relative;
            bottom: -5px;
            transform: rotateZ(45deg);
            top: auto;
        }

        #openhomeHeader .doc-ul {
            text-align: center;
            position: absolute !important;
        }

        #openhomeHeader .doc-ul li {
            background: rgba(0, 0, 0, 0.6);

        }

        #openhomeHeader .doc-ul:before {
            content: "";
            display: block;
            width: 0px;
            height: 0px;
            /*background:rgba(0,0,0,0.6);*/
            margin: auto;
            position: relative;
            top: 0px;
            /*transform: rotateZ(45deg);*/

            border-left: 10px solid transparent;
            border-right: 10px solid transparent;
            border-bottom: 10px solid rgba(0, 0, 0, 0.6);
        }

        #openhomeHeader .doc-ul .doc-li {
            width: 105px;
            line-height: 50px;
        }

        #openhomeHeader.fixed .doc-ul .doc-li {
            border-left: 1px solid #e6e7ec;
            border-right: 1px solid #e6e7ec;
        }

        #openhomeHeader.fixed .doc-ul .doc-li:first-child {
            border: 1px solid #e6e7ec;
            border-bottom: none;
        }

        #openhomeHeader.fixed .doc-ul .doc-li:last-child {
            border: 1px solid #e6e7ec;
            border-top: none;
        }

        #openhomeHeader .doc-ul .doc-li a {
            color: #fff;
        }

        #openhomeHeader .doc-ul .doc-li a:hover {
            text-decoration: underline;
        }

        #openhomeHeader .document-div .mask-item {
            width: 100%;
            height: 450px;
            position: absolute;
            z-index: 1100;
            background: #000;
            opacity: .5;
            top: 0px;
            left: 0px;
        }

        .swiper-slide a:hover {
            text-decoration: none;
        }

        #openhomeHeader .solve-child-menu .menu-item-title {
            font-size: 18px;
        }

        #openhomeHeader.header-content.fixed .document-div .mask-item {
            background: #fff;
            opacity: 1;
            border-bottom: 1px solid #eaebef;
        }

        #openhomeHeader.header-content.fixed .doc-li a {
            color: #1a1a1a;
        }

        #openhomeHeader.header-content.fixed .doc-li a:hover {
            color: #108EE9;
        }

        .menu-item.home-menu span {
            cursor: default;
        }

        /*end doc-child-menu*/

        /*end head*/

        /*goTop*/
        .goTop {
            border: solid 1px #E8E8E8;
            background: #fff;
            color: #6D7C8F;
            position: fixed;
            right: 30px;
            bottom: 50px;
            z-index: 2000;
            width: 50px;
            height: 50px;
            /*line-height: 64px;*/
            font-size: 28px;
            display: none;
            text-align: center;
            cursor: pointer;
            /*opacity: 0;
  transition: all 2s;
  -moz-transition: all 2s;
  -webkit-transition: all 2s;
  -o-transition: all 2s;*/
        }

        .goTop .icon {
            line-height: 18px;
            font-size: 18px;
            padding-top: 6px;
        }

        .goTop .text {
            font-size: 12px;
        }

    </style>
    <!-- start head -->
    <div class="content header-content " data-val="" id="openhomeHeader">
        <div class="account-center fn-clear">
            <div class="mainBox fn-clear">
                <div class="header-account-box fn-clear">
                    <ul class="inner fn-clear">
                        <li>
                            <a class="account-meta first J_buttonLogin" href="#">登录</a>
                        </li>
                        <li>
                            <a class="account-meta" href="#" target="_blank">注册</a>
                        </li>
                        <li>
                            <a class="account-meta" target="_blank" href="#">客服服务</a>
                        </li>

                        <li>
                            <a class="account-meta" target="_blank" href="#">商家中心</a>
                        </li>
                    </ul>
                </div>
            </div>

        </div>
        <div class="menu-area ">
            <div class="menu-content fn-clear">
                <div class="mainBox fn-clear">
                    <div class="antLogo">
                        <a href="#">
                            <img class="antLogoImg"
                                 src="image/logo.png">
                        </a>
                    </div>
                    <div class="nav-menu">
                        <ul class="fn-clear">
                            <li class=" menu-item home-menu  selected " data-select="true">
                                <div>
                                    <a href="">首页</a>
                                </div>
                            </li>

                            <li class="menu-item home-menu "
                            >
                                <div class="fn-arrow">
                                    <span href="javascript:void(0);">企业服务</span>
                                </div>
                            </li>

                            <li class="menu-item home-menu ">
                                <div>
                                    <a href="">投资园地</a>
                                </div>
                            </li>

                            <li class="menu-item home-menu" id="nav-doc">
                                <div class="fn-arrow ">
                                    <a href="">挂牌企业</a>
                                </div>
                            </li>

                            <li class="menu-item home-menu">
                                <div>
                                    <a href="">路演中心</a>
                                </div>
                            </li>

                            <li class="menu-item home-menu ">
                                <div>
                                    <a href="">登记托管</a>
                                </div>
                            </li>

                            <li class="menu-item home-menu "
                                style="margin-right:20px;">
                                <div>
                                    <a href="">培训咨询</a>
                                </div>
                            </li>


                            <li class="menu-item home-menu lastChild">
                                <div>
                                    <a href="">挂牌展示</a>
                                </div>
                            </li>

                        </ul>
                    </div>
                </div>
            </div>
            <div class="child-menu-content">

                <div class="child-menu">
                    <!-- start solve-child-menu -->
                    <div class="child-menu-item solve-div fn-clear fn-topM" data-type="solve">
                        <div class="mask-item"></div>
                        <ul class="solve-child-menu fn-clear">
                            <!-- FD:98:openhome-fengdie-common/theme/header.vm:1271:theme/solvePay.schema:½â¾ö·½°¸×Ó²Ëµ¥-Ö§¸¶½â¾ö·½°¸:START -->
                            <li class="solve-child-menu-item pay-menu">
                                <div class="menu-item-icon">
                                    <img class="icon-w"
                                         src="images/QxOPqsbHmqqWAsg.png"
                                         seed="menuItemIcon-iconW">
                                    <img class="icon-b"
                                         src="images/MPpClkZQfcSgMQb.png"
                                         seed="menuItemIcon-iconB">
                                </div>
                                <div class="menu-item-title">Ö§¸¶½â¾ö·½°¸</div>
                                <ul class="fn-clear">

                                    <li><a target="_blank"
                                           href="https://openhome.alipay.com/platform/banner.htm?page=facePay"
                                           seed="barcode01">ÌõÂë¸¶</a></li>

                                    <li><a target="_blank"
                                           href="https://openhome.alipay.com/platform/banner.htm?page=webPay"
                                           seed="qrcode01">É¨Âë¸¶</a></li>

                                    <li><a target="_blank"
                                           href="https://openhome.alipay.com/platform/banner.htm?page=appPay"
                                           seed="soundwave01">Éù²¨¸¶</a></li>

                                    <li><a target="_blank"
                                           href="https://openhome.alipay.com/platform/banner.htm?page=wifiLogin"
                                           seed="fastlogin01">Ö§¸¶±¦µÇÂ¼</a></li>

                                </ul>

                            </li>
                            <!-- FD:98:openhome-fengdie-common/theme/header.vm:1271:theme/solvePay.schema:½â¾ö·½°¸×Ó²Ëµ¥-Ö§¸¶½â¾ö·½°¸:END -->
                            <!-- FD:98:openhome-fengdie-common/theme/header.vm:1270:theme/solveLife.schema:½â¾ö·½°¸×Ó²Ëµ¥-Éú»îÏû·Ñ½â¾ö·½°¸:START -->
                            <li class="solve-child-menu-item life-menu">
                                <div class="menu-item-icon">
                                    <img class="icon-w"
                                         src="images/LUtEgeuOqbtHpCA.png"
                                         seed="menuItemIcon-iconWT1">
                                    <img class="icon-b"
                                         src="images/iHVAaDWINCrLuSg.png"
                                         seed="menuItemIcon-iconBT1">
                                </div>
                                <div class="menu-item-title">Éú»î·þÎñ½â¾ö·½°¸</div>
                                <ul class="fn-clear">

                                    <li><a target="_blank"
                                           href="https://openhome.alipay.com/platform/banner.htm?page=repast"
                                           seed="kf2016-daohang-koubei-repast">²ÍÒû</a></li>

                                    <li><a target="_blank"
                                           href="https://openhome.alipay.com/platform/banner.htm?page=superMarket"
                                           seed="kf2016-daohang-koubei-superMatket">ÉÌ³¬</a></li>

                                    <li><a target="_blank"
                                           href="https://openhome.alipay.com/platform/banner.htm?page=play"
                                           seed="kf2016-daohang-koubei-play">ÐÝÏÐÓéÀÖ</a></li>

                                    <li><a target="_blank"
                                           href="https://openhome.alipay.com/platform/banner.htm?page=beauty"
                                           seed="kf2016-daohang-koubei-beauty">ÀöÈË</a></li>

                                    <li><a target="_blank"
                                           href="https://openhome.alipay.com/platform/banner.htm?page=ktv"
                                           seed="kf2016-daohang-koubei-ktv">KTV</a></li>

                                    <li><a target="_blank"
                                           href="https://openhome.alipay.com/platform/banner.htm?page=cbd"
                                           seed="kf2016-daohang-koubei-cbd">ÉÌÈ¦</a></li>

                                    <li><a target="_blank"
                                           href="https://openhome.alipay.com/platform/banner.htm?page=rentCar"
                                           seed="kf2016-daohang-koubei-zuche">ÐÅÓÃ×â³µ</a></li>

                                    <li><a target="_blank"
                                           href="https://openhome.alipay.com/platform/banner.htm?page=rentHouse"
                                           seed="kf2016-daohang-koubei-zufang">ÐÅÓÃ×â·¿</a></li>

                                </ul>

                            </li>
                            <!-- FD:98:openhome-fengdie-common/theme/header.vm:1270:theme/solveLife.schema:½â¾ö·½°¸×Ó²Ëµ¥-Éú»îÏû·Ñ½â¾ö·½°¸:END -->
                            <!-- FD:98:openhome-fengdie-common/theme/header.vm:1272:theme/solvePublic.schema:½â¾ö·½°¸×Ó²Ëµ¥-¹«¹²·þÎñ½â¾ö·½°¸:START -->
                            <li class="solve-child-menu-item public-menu">
                                <div class="menu-item-icon">
                                    <img class="icon-w"
                                         src="images/pavIKLHZPQasWlC.png"
                                         seed="menuItemIcon-iconWT2">
                                    <img class="icon-b"
                                         src="images/tpCeymvlcgkaZDh.png"
                                         seed="menuItemIcon-iconBT2">
                                </div>
                                <div class="menu-item-title">¹«¹²·þÎñ½â¾ö·½°¸</div>
                                <ul class="fn-clear">

                                    <li><a target="_blank"
                                           href="https://openhome.alipay.com/platform/banner.htm?page=traffic"
                                           seed="jiejuefangan-jiaojing">½»¹Ü</a></li>

                                    <li><a target="_blank"
                                           href="https://openhome.alipay.com/platform/banner.htm?page=hospital"
                                           seed="jiejuefangan-yiliao">Ò½ÁÆ</a></li>

                                    <li><a target="_blank"
                                           href="https://openhome.alipay.com/platform/banner.htm?page=underground"
                                           seed="jiejuefangan-ditie">µØÌú</a></li>

                                    <li><a target="_blank"
                                           href="https://openhome.alipay.com/platform/banner.htm?page=car"
                                           seed="jiejuefangan-tingche">Í£³µ</a></li>

                                    <li><a target="_blank"
                                           href="https://openhome.alipay.com/platform/banner.htm?page=accFund"
                                           seed="jiejuefangan-gongjijin">¹«»ý½ð</a></li>

                                    <li><a target="_blank"
                                           href="https://openhome.alipay.com/platform/banner.htm?page=water"
                                           seed="jiejuefangan-shuiwu">Ë®Îñ</a></li>

                                    <li><a target="_blank"
                                           href="https://openhome.alipay.com/platform/banner.htm?page=etc"
                                           seed="jiejuefangan-gaosu">¸ßËÙ</a></li>

                                    <li><a target="_blank"
                                           href="https://openhome.alipay.com/platform/banner.htm?page=tenement"
                                           seed="jiejuefangan-wuye">ÎïÒµ</a></li>

                                </ul>

                            </li>
                            <!-- FD:98:openhome-fengdie-common/theme/header.vm:1272:theme/solvePublic.schema:½â¾ö·½°¸×Ó²Ëµ¥-¹«¹²·þÎñ½â¾ö·½°¸:END -->
                        </ul>
                    </div>
                    <!-- end  solve-child-menu -->
                    <!-- start demo-child-menu -->
                    <div class="child-menu-item demo-div  fn-topM " data-type="demo">
                        <div class="mask-item"></div>
                        <div class="demo-child-menu">
                            <div class="demo-child-content">
                                <ul class="fn-clear">

                                </ul>
                            </div>
                        </div>

                    </div>
                    <!-- end demo-child-menu -->

                    <!-- start document-child-menu -->
                    <div class="child-menu-item document-div fn-clear fn-topM" data-type="document">
                        <!-- <div class="mask-item"></div> -->
                        <div class="document-child-menu fn-clear">
                            <ul class="doc-ul fn-clear" style="left: 645px;">

                                <li class="doc-li"><a href="https://doc.open.alipay.com/" seed="wendangzhongxin01"
                                >ÎÄµµÄ¿Â¼</a></li>

                                <li class="doc-li"><a href="https://doc.open.alipay.com/doc2/apiList?docType=4"
                                                      seed="API01">APIÄ¿Â¼</a></li>

                            </ul>
                        </div>

                    </div>
                    <!-- end document-child-menu -->


                </div>
            </div>
        </div>
    </div>
</div>

<div class="body">
    <style>
        .detail .content p {
            text-align: left;
        }

        .detail .content strong {
            font-weight: 700;
        }
    </style>

    <div>

        <!-- FD:95:openhome-fengdie-home/home/headSwiper.vm:1222:home/headSwiper.schema:Ê×Ò³ÂÖ²¥²å¼þ:START -->
        <style>
            .slick-content {
                width: 100%;
                height: 558px;
                position: relative;

            }

            .slick-content-box {
                width: 100%;
                height: 558px;
                position: relative;
                overflow: hidden;
            }

            .slick-item {
                width: 100%;
                height: 558px;
                text-align: center;
                font-size: 18px;
                background: #fff;
                position: relative;
                display: -webkit-box;
                display: -ms-flexbox;
                display: -webkit-flex;
                display: flex;
                -webkit-box-pack: center;
                -ms-flex-pack: center;
                -webkit-justify-content: center;
                justify-content: center;
                -webkit-box-align: center;
                -ms-flex-align: center;
                -webkit-align-items: center;
                align-items: center;

                /*transition:all 0.3s ease-in-out;
        -moz-transition:all 0.3s ease-in-out;
        -webkit-transition:all 0.3s ease-in-out;
        -o-transition:all 0.3s ease-in-out;*/
            }

            .nav-mask-item {
                background-image: linear-gradient(-180deg, rgba(0, 0, 0, 0.30) 0%, rgba(0, 0, 0, 0.00) 92%);
                height: 168px;
                position: absolute;
                left: 0;
                right: 0;
                top: 0;
                z-index: 1;
            }

            .notice-mask-item {
                opacity: 0.15;
                background-color: #000;
                height: 40px;
                position: absolute;
                left: 0;
                right: 0;
                bottom: 0;
                z-index: 1;
            }

            .slick-content .img {
                width: 100%;
                display: block;
                height: 558px;
                background-repeat: no-repeat;
                background-position: center;
                background-size: cover;
                -webkit-background-size: cover;
                -moz-background-size: cover;
            }

            .fn-filter {
                -webkit-filter: blur(10px);
                -moz-filter: blur(10px);
                -o-filter: blur(10px);
                -ms-filter: blur(10px);
                filter: blur(10px);
                filter: progid:DXImageTransform.Microsoft.Blur(pixelRadius=10, MakeShadow=false);

                transform: scale(1.1);
                zoom: 1.0 \9;

            }

            .img.fn-filter {
                position: absolute;
                top: -5;
                bottom: 0;
                left: -5;
                right: 0;
                width: 100%;
                height: 100%;
                z-index: 1;
            }

            .theme-title {
                position: relative;;
                width: 1200px;

                top: 40%;
                /*bottom: 50%;*/
                margin: auto;
                z-index: 10;
            }

            .main-title {
                font-size: 54px;
                color: #fff;
                line-height: 75px;
            }

            .sub-title {
                font-size: 18px;
                color: #fff;
                line-height: 25px;
                padding-top: 11px;
            }

            /*.swiper-pagination {
          position: absolute;

          z-index: 20;
          bottom:40px;
          width: 1200px;
          margin: auto;
          left: 0px;
          right: 0px;
          text-align: left;
        }
        .swiper-pagination-switch {
          display: inline-block;

          border-radius: 8px;
          background: #555;
          margin: 0 5px;
          opacity: 0.8;

          cursor: pointer;

          width:8px;
          height:8px;
          background: rgba(255,255,255,0.5)
        }
        .swiper-active-switch {
          background: rgba(255,255,255,0.8);
        }*/

            #swiper-pagination {
                bottom: 40px;
                width: 1200px;
                margin: auto;
                left: 0px;
                right: 0px;
                text-align: left;
            }

            #swiper-pagination .swiper-pagination-bullet {
                width: 8px;
                height: 8px;
                background: rgba(255, 255, 255, 0.5)
            }

            #swiper-pagination.swiper-pagination-bullet.swiper-pagination-bullet-active {
                background: rgba(255, 255, 255, 0.8);
            }

            .J-imgBox {
                width: 100%;
                transition: all 0.3s ease-in-out;
                -moz-transition: all 0.3s ease-in-out;
                -webkit-transition: all 0.3s ease-in-out;
                -o-transition: all 0.3s ease-in-out;
            }

            .slick-content .slick-dots {
                width: 1200px;
                margin: auto;
                left: 0px;
                right: 0px;
                text-align: left;
                bottom: 50px;
            }

        </style>

        <!-- start swiper-->


        <div class="content slick-content">
            <div class="slick-mainContainer ">
                <!--[if lte IE 8]>
                <div class="slick-content-box">

                    <div class="slick-item">
                        <div class="J-imgBox">
                            <a class="img" target="_blank" href="https://event.open.alipay.com/anttalk/web/event"
                               style="font-size" seed="">
                                <img src="image/simplyindexbg1.jpg">
                            </a>
                        </div>
                    </div>

                    <div class="slick-item">
                        <div class="J-imgBox">
                            <a class="img" target="_blank"
                               href="https://openhome.alipay.com/platform/customPage.htm?id=zhimaxinyong&from=kfpt"
                               style="font-size" seed="zhima01">
                                <img src="https://zos.alipayobjects.com/cmsmng/cms/images/iw1o95ew/ba6ff7c3-0c06-4a39-ba77-1d4d812362c8.jpeg"
                                     style="width:100%;height:558px"/>
                            </a>
                        </div>
                    </div>

                    <div class="slick-item">
                        <div class="J-imgBox">
                            <a class="img" target="_blank"
                               href="https://openhome.alipay.com/platform/customPage.htm?id=chunyuerqi"
                               style="font-size" seed="chunyuerqi">
                                <img src="https://zos.alipayobjects.com/cmsmng/cms/images/ius4y519/21c0dee4-3553-4a8f-b655-15002b978034.jpeg"
                                     style="width:100%;height:558px"/>
                            </a>
                        </div>
                    </div>

                    <div class="slick-item">
                        <div class="J-imgBox">
                            <a class="img" target="_blank"
                               href="https://openhome.alipay.com/platform/customPage.htm?id=zfbsk1020" style="font-size"
                               seed="zfbsk01">
                                <img src="https://zos.alipayobjects.com/cmsmng/cms/images/iuouslpf/5a5c72d6-ca47-4f29-ad9e-7451f41524fc.jpeg"
                                     style="width:100%;height:558px"/>
                            </a>
                        </div>
                    </div>

                    <div class="slick-item">
                        <div class="J-imgBox">
                            <a class="img" target="_blank"
                               href="https://doc.open.alipay.com/docs/doc.htm?spm=a219a.7629140.0.0.HFIANa&treeId=193&articleId=105518&docType=1"
                               style="font-size" seed="">
                                <img src="https://zos.alipayobjects.com/cmsmng/cms/images/is8wgpor/44be0a21-1482-4271-b162-0afe4374faac.jpeg"
                                     style="width:100%;height:558px"/>
                            </a>
                        </div>
                    </div>

                </div>
                <![endif]-->
                <!--[if !IE 8]><!-->
                <div class="slick-content-box slick-initialized slick-slider">

                    <div class="slick-list draggable" tabindex="0">
                        <div class="slick-track" style="opacity: 1; width: 7915px;">
                            <div class="slick-item slick-slide"
                                 style="width: 1583px; position: relative; left: 0px; top: 0px; z-index: 900; opacity: 1;">
                                <div class="J-imgBox">
                                    <a class="img" target="_blank"
                                       href="https://event.open.alipay.com/anttalk/web/event"
                                       style="background:url('https://zos.alipayobjects.com/cmsmng/cms/images/ivt7uzzb/36fafae3-b3df-4c8a-b8ae-dd0b952fd5fa.jpeg') no-repeat;background-size: cover;background-repeat: no-repeat;background-position: center;"
                                       seed="JImgBox-img">
                                        <div class="theme-title fn-clear">
                                            <div class="main-title"></div>
                                            <div class="sub-title"></div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="slick-item slick-slide slick-active"
                                 style="width: 1583px; position: relative; left: -1583px; top: 0px; z-index: 800; opacity: 0;">
                                <div class="J-imgBox">
                                    <a class="img" target="_blank"
                                       href="https://openhome.alipay.com/platform/customPage.htm?id=zhimaxinyong&amp;from=kfpt"
                                       style="background:url('https://zos.alipayobjects.com/cmsmng/cms/images/iw1o95ew/ba6ff7c3-0c06-4a39-ba77-1d4d812362c8.jpeg') no-repeat;background-size: cover;background-repeat: no-repeat;background-position: center;"
                                       seed="zhima01">
                                        <div class="theme-title fn-clear">
                                            <div class="main-title"></div>
                                            <div class="sub-title"></div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="slick-item slick-slide"
                                 style="width: 1583px; position: relative; left: -3166px; top: 0px; z-index: 800; opacity: 0;">
                                <div class="J-imgBox">
                                    <a class="img" target="_blank"
                                       href="https://openhome.alipay.com/platform/customPage.htm?id=chunyuerqi"
                                       style="background:url('https://zos.alipayobjects.com/cmsmng/cms/images/ius4y519/21c0dee4-3553-4a8f-b655-15002b978034.jpeg') no-repeat;background-size: cover;background-repeat: no-repeat;background-position: center;"
                                       seed="chunyuerqi">
                                        <div class="theme-title fn-clear">
                                            <div class="main-title"></div>
                                            <div class="sub-title"></div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="slick-item slick-slide"
                                 style="width: 1583px; position: relative; left: -4749px; top: 0px; z-index: 800; opacity: 0;">
                                <div class="J-imgBox">
                                    <a class="img" target="_blank"
                                       href="https://openhome.alipay.com/platform/customPage.htm?id=zfbsk1020"
                                       style="background:url('https://zos.alipayobjects.com/cmsmng/cms/images/iuouslpf/5a5c72d6-ca47-4f29-ad9e-7451f41524fc.jpeg') no-repeat;background-size: cover;background-repeat: no-repeat;background-position: center;"
                                       seed="zfbsk01">
                                        <div class="theme-title fn-clear">
                                            <div class="main-title"></div>
                                            <div class="sub-title"></div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="slick-item slick-slide"
                                 style="width: 1583px; position: relative; left: -6332px; top: 0px; z-index: 800; opacity: 0;">
                                <div class="J-imgBox">
                                    <a class="img" target="_blank"
                                       href="https://doc.open.alipay.com/docs/doc.htm?spm=a219a.7629140.0.0.HFIANa&amp;treeId=193&amp;articleId=105518&amp;docType=1"
                                       style="background:url('https://zos.alipayobjects.com/cmsmng/cms/images/is8wgpor/44be0a21-1482-4271-b162-0afe4374faac.jpeg') no-repeat;background-size: cover;background-repeat: no-repeat;background-position: center;"
                                       seed="JImgBox-imgT1">
                                        <div class="theme-title fn-clear">
                                            <div class="main-title"></div>
                                            <div class="sub-title"></div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>


                    <ul class="slick-dots" style="display: block;">
                        <li class="slick-active">
                            <button type="button">1</button>
                        </li>
                        <li class="">
                            <button type="button">2</button>
                        </li>
                        <li class="">
                            <button type="button">3</button>
                        </li>
                        <li class="">
                            <button type="button">4</button>
                        </li>
                        <li class="">
                            <button type="button">5</button>
                        </li>
                    </ul>
                </div>
                <!--[endif]---->

                <div class="nav-mask-item"></div>
                <div class="notice-mask-item"></div>
                <div id="swiper-pagination" class="swiper-pagination"></div>
            </div>
            <!-- FD:98:openhome-fengdie-common/tile/homeNotice.vm:START -->
            <style>
                /*.detail .content p{text-align:left;}*/
                /*.detail .content strong{font-weight:700;}*/

                .notice-container {
                    /*position: absolute;*/
                    /*left: 0;*/
                    /*bottom: 0;*/
                    margin-top: -40px;
                    width: 100%;
                    z-index: 10;
                    height: 40px;
                    /*background: #f7f7fa;*/
                    /*border-bottom: 1px solid #d6dfe9;*/
                }

                .notice-container:after {
                    content: '';
                    position: absolute;
                    display: block;
                    left: 0;
                    bottom: 0;
                    width: 100%;
                    height: 30px;
                }

                .notice-container .inner {
                    height: 30px;
                }

                .notice-box {
                    padding: 0 20px;
                    position: relative;
                    line-height: 28px;
                    z-index: 1000;
                    text-align: left;
                }

                .notice-icon {
                    float: left;
                    /* margin-top: 5px; */
                    margin-right: 17px;
                    vertical-align: middle;
                    display: inline-block;
                    width: 16px;
                    line-height: 38px;
                    height: 38px;
                    color: #fff;
                }

                .notice-box ul {
                    overflow: hidden;
                    font-size: 0;
                    margin-left: 10px;
                }

                .notice-box li {
                    float: left;
                    margin-right: 50px;
                    height: 38px;
                    line-height: 38px;
                    width: 270px;
                }

                .notice-box li:before {
                    content: "¡ñ";
                }

                .notice-box .last {
                    margin-right: 0px;
                    position: absolute;
                    right: 20px;
                    top: 0;
                    width: auto;
                }

                .notice-box a {
                    font-size: 14px;
                    color: #fff;
                    position: relative;
                    /*padding-right: 28px;*/
                    height: 30px;
                    max-width: 242px;
                    white-space: nowrap;
                    overflow: hidden;
                    -ms-text-overflow: ellipsis;
                    -o-text-overflow: ellipsis;
                    text-overflow: ellipsis;
                    display: inline-block;
                }

                .notice-box a:hover {
                    color: #fff;
                }

                .notice-box .more-notice {
                    width: 100px;
                    float: right;
                    text-align: right;
                    margin-right: 0px;
                }

                .notice-box .more-notice a {
                    margin-right: 0px;
                    position: absolute;
                    right: 20px;
                    top: 0;
                    width: auto;
                    padding-right: 0;
                    color: #fff;
                }

            </style>

            <div class="notice-container">
                <div class="inner">
                    <div class="notice-box">
                        <i class="notice-icon newIcon">¤h</i>
                        <ul>
                            <li><a class="" target="_blank"
                                   href="https://open.alipay.com/platform/announcement.htm?id=1">¹ØÓÚÂìÒÏ½ð·þ¼¯ÍÅ¡°Ç§ÏØÍòÒÚ¡±¼Æ»®ºÏ×÷ÊÂÏîµÄ³ÎÇå¹«¸æ</a>
                            </li>
                            <li><a class="" target="_blank"
                                   href="https://open.alipay.com/platform/announcement.htm?id=2">Ö§¸¶±¦Ð­×÷·Ñ·¢Æ±Ë°ºÅ±ä¸üÍ¨Öª</a>
                            </li>
                            <li><a class="" target="_blank"
                                   href="https://open.alipay.com/platform/announcement.htm?id=3">
                                ÂìÒÏ½ð·þ¿ª·ÅÆ½Ì¨¹ØÓÚÌ×ÏÖÐÐÎª´¦·£µÄ¹«¸æ</a></li>
                            <li class="more-notice"> ¡ñ <a target="_blank"
                                                           href="https://open.alipay.com/platform/announcement.htm"
                                                           seed="moreNotice-link">²é¿´¸ü¶à&gt;</a></li>
                        </ul>
                    </div>
                </div>
            </div>

        </div>

        <div>
            <!-- FD:95:openhome-fengdie-home/home/home.vm:717:home/home.schema:Ê×Ò³ÅäÖÃ:START -->
            <style>
                @font-face {
                    font-family: 'newIcon';
                    src: url('//at.alicdn.com/t/font_1468928161_252794.eot'); /* IE9*/
                    src: url('//at.alicdn.com/t/font_1468928161_252794.eot?#iefix') format('embedded-opentype'), /* IE6-IE8 */ url('//at.alicdn.com/t/font_1468928161_252794.woff') format('woff'), /* chrome¡¢firefox */ url('//at.alicdn.com/t/font_1468928161_252794.ttf') format('truetype'), /* chrome¡¢firefox¡¢opera¡¢Safari, Android, iOS 4.2+*/ url('//at.alicdn.com/t/font_1468928161_252794.svg#iconfont') format('svg'); /* iOS 4.1- */
                }

                a, a:hover {
                    color: #108ee9;
                }

                .jui-btn.jui-btn-table, .jui-btn.jui-btn-table.jui-btn-active, .jui-btn.jui-btn-table:active, .jui-btn.jui-btn-table:hover {
                    border-color: #108ee9;
                    color: #108ee9;
                }

                .float-tips a:hover {
                    text-decoration: underline;
                }

                .newIcon {
                    font-family: 'newIcon';
                }

                .solve-up:after {
                    content: "\e616";
                    font-family: "newIcon";
                }

                .solve-down:after {
                    content: "\e615";
                    font-family: "newIcon";
                    color: #fff;
                }

                /*start solve*/
                .solve-content {
                    background: #F7F7FA;
                    text-align: center;
                }

                .solve-content a {
                    text-decoration: none;
                }

                .solve-title {
                    color: #38425C;
                    font-size: 32px;
                    text-align: center;
                    padding-top: 54px;
                    padding-bottom: 45px;
                }

                .solve-list-content {
                    display: inline-block;
                }

                .solve-ul {
                    padding-bottom: 72px;
                }

                .solve-li {
                    float: left;
                    border: solid #E8E8E8;
                    border-width: 1px 1px 1px 0px;
                    width: 342px;
                    height: 421px;
                    background: #fff;
                    overflow: hidden;
                    position: relative;
                }

                .solve-li:nth-child(1) {
                    border-width: 1px 1px 1px 1px;
                }

                .solve-li table {
                    top: 0px;
                }

                .solve-icon {
                    padding-top: 10px;
                }

                .solve-item {
                    /*padding-bottom:10px;*/
                    height: 423px;
                }

                .solve-item .solve-item-title {
                    padding-top: 57px;
                    padding-bottom: 36px;
                    color: #38425C;
                    font-size: 24px;

                }

                .solve-item-swiper {
                    font-size: 16px;
                }

                .solve-item-swiper {
                    /*border:solid 1px #f00;*/
                    padding-left: 32px;
                    padding-right: 32px;
                    height: 210px;
                    overflow: hidden;
                }

                .solve-item-swiper a {
                    display: block;
                }

                .solve-item-swiper a:hover {
                    text-decoration: underline;
                }

                .solve-item-swiper img {
                    width: 40px;
                    height: 40px;
                }

                /*.solve-box{
      width: 278px;
      position: absolute;
    }*/
                .solve-item-swiperBtn {
                    /*margin-top:46px;*/
                    position: absolute;
                    width: 100%;
                    bottom: 27px;
                }

                .swiper-btn {
                    width: 29px;
                    height: 29px;
                    border: solid 1px #D5D5D5;
                    border-radius: 50%;
                    color: #D5D5D5;
                    font-size: 14px;
                    line-height: 29px;
                    margin: auto;
                }

                .solve-item-swiper table {
                    width: 100%;
                    border-collapse: collapse;
                    position: relative;
                }

                .solve-item-swiper td {
                    /*width: 130px;*/
                    height: 104px;
                    color: #6D7C8F;
                    /*border:solid 1px #D5D5D5;*/
                }

                .solve-item-swiper a {
                    color: #6D7C8F;
                }

                .solve-item-swiper td {
                    width: 50%;
                    vertical-align: middle;
                }

                .solve-item-swiper td:nth-child(2n-1) {
                    /*border-right:solid 1px #D5D5D5;*/
                }

                .solve-item-swiper tr:nth-child(2n-1) {
                    /*border-bottom:solid 1px ;*/
                    /*border-color: #D5D5D5 #ffffff;*/
                }

                .solve-item-swiper tr:nth-child(2n-1) td:nth-child(2n-1) {
                    background: url("https://zos.alipayobjects.com/rmsportal/UBAlQBgYZMjzbCi.png") no-repeat;
                    background-position: 0px 0px;
                }

                .solve-item-swiper tr:nth-child(2n-1) td:nth-child(2n) {
                    background: url("https://zos.alipayobjects.com/rmsportal/mgTGkDfWZYmAtGS.png") no-repeat;
                    background-position: -1px 0px;
                }

                .solve-item-swiper tr:nth-child(2n) td:nth-child(2n-1) {
                    background: url("https://zos.alipayobjects.com/rmsportal/YGHzzmzvoxxPvtM.png") no-repeat;
                    background-position: 0px -2px;
                }

                .float-tips {
                    color: #fff;
                    width: 342px;
                    height: 364px;
                    background: #272C44;
                    opacity: 0.95;
                    position: absolute;
                    /*top:0px;*/
                    top: 423px;
                    padding: 57px 0px 0px 0px;
                    background-image: url(https://zos.alipayobjects.com/rmsportal/xkNFcUnqDDETUnT.png);
                }

                .float-tips a {
                    color: #fff;
                    text-decoration: none;
                }

                .tips-list {
                    max-height: 275px;
                    overflow: hidden;
                }

                .float-tips .tips-ul {

                }

                .float-tips .tips-ul li {
                    float: left;
                    width: 128px;
                    /*height:50px;*/
                    padding-bottom: 5px;
                    color: #fff;
                    font-size: 16px;
                }

                .float-tips .tips-ul li.centetLi {
                    padding-top: 20px;
                }

                .float-tips .tips-ul li:nth-child(2n-1) {
                    text-align: right;
                    padding-right: 42px;
                    border-right: solid 1px rgba(255, 255, 255, 0.3);
                }

                .float-tips .tips-ul li:nth-child(2n) {
                    text-align: left;
                    padding-left: 42px;
                    /*border-left:solid 1px #fff;*/
                }

                .float-tips-swiperBtn {
                    position: absolute;
                    width: 100%;
                    bottom: 27px;
                }

                /*end solve*/
                /*start success*/
                .success-content {
                    background: #fff;
                    text-align: center;
                }

                .success-list-content {
                    display: inline-block;
                }

                .success-title {
                    color: #38425C;
                    font-size: 32px;
                    text-align: center;
                    padding-top: 54px;
                    padding-bottom: 42px;
                }

                .suc-li {
                    float: left;
                    padding-bottom: 52px;
                    padding-left: 12px;
                }

                .suc-li:nth-child(1) {
                    padding-left: 0px;
                }

                .suc-li .suc-item {
                    border: solid 1px #E8E8E8;
                    width: 247px;
                    display: block;
                    position: relative;
                }

                .suc-item .J_toCaseDetail {
                    display: block;
                    position: absolute;
                    left: 0;
                    top: 15px;
                    bottom: 0;
                    right: 0;
                }

                .suc-li .suc-item:hover {
                    text-decoration: none;
                }

                .suc-li .suc-item.suc-item-hover {
                    border-color: #108ee9;
                }

                .suc-item .suc-item-type {
                    color: #108EE9;
                    font-size: 14px;
                    margin-top: -10px;
                    /*text-align: center;*/
                }

                .suc-item .suc-item-type a {
                    padding: 0 22px;
                    background: #fff;
                    text-align: center;
                }

                .suc-item .suc-item-bg {
                    padding: 22px 20px 0px 20px;
                    width: 203px;
                    height: 130px;
                    font-size: 0px;
                }

                .suc-item .suc-item-bg img {
                    width: 203px;
                    height: 130px;
                }

                .suc-item .suc-item-logo {
                    width: 100%;
                    height: 50px;
                    margin-top: -25px;
                    text-align: center;
                }

                .suc-item .suc-item-logo img {
                    width: 50px;
                    height: 50px;
                    border-radius: 100%;
                    overflow: hidden;
                }

                .suc-item-title {
                    padding-top: 8px;
                    padding-bottom: 10px;
                    color: #38425C;
                    font-size: 18px;
                }

                .suc-item-tip {
                    color: #6D7C8F;
                    font-size: 14px;
                    line-height: 20px;
                    height: 44px;
                    padding: 0px 29px 41px 29px;

                }

                .jui-btn.jui-btn-table:hover {
                    background-color: transparent;
                    text-decoration: underline;
                }

                .button-content {
                    padding-bottom: 72px;
                }

                /*end success*/

                /*start ability*/
                .ability-content {
                    background: #F7F7FA;
                    text-align: center;
                    padding-bottom: 107px;
                }

                .ability-title {
                    color: #38425C;
                    font-size: 32px;
                    padding-top: 54px;
                    padding-bottom: 76px;
                    text-align: center;
                }

                .ability-list-content {
                    width: 1030px;
                    margin: auto;
                }

                .ability-list-content .ability-ul {
                    display: inline-block;
                    /*padding-bottom:120px;*/
                }

                .ability-list-content .ability-li {
                    float: left;
                    width: 210px;
                    /*height:210px;*/
                    margin-left: 200px;
                }

                .ability-list-content .ability-li.ability-li-first {
                    margin-left: 0px;
                }

                /*.ability-list-content .ability-li:nth-child(1){*/
                /*padding-left: 0px;*/
                /*}*/
                .ability-list-content .ability-li .ability-item {
                    /*border:solid 1px #108EE9;*/
                    /*border-radius: 50%;*/
                    width: 210px;
                    /*height:210px;*/
                    display: block;
                    /*position: relative;*/
                }

                .ability-list-content .ability-li .ability-circle {
                    border: solid 1px #108EE9;
                    border-radius: 50%;
                    width: 210px;
                    height: 210px;
                    display: block;
                    /*position: relative;*/
                }

                .ability-list-content .ability-li .ability-item:hover, .ability-list-content .ability-li .ability-item:hover .ability-item-title, .ability-list-content .ability-li .ability-item:hover .ability-item-tip {
                    color: #108ee9;
                    text-decoration: none;
                }

                .ability-item .icon {
                    /*border:solid 1px #f00;*/
                    width: 44px;
                    height: 44px;
                    margin: 52px auto 0 auto;

                }

                .ability-item .icon img {
                    width: 100%;
                }

                .ability-item .ability-item-title {
                    color: #38425C;
                    font-size: 24px;
                    padding-top: 14px;
                    padding-bottom: 15px;
                }

                .ability-item .ability-item-tip {
                    width: 168px;
                    height: 50px;
                    padding: 10px 20px 0px 20px;
                    font-size: 14px;
                    line-height: 20px;
                    color: #6D7C8F;
                    background: #F7F7FA;
                    margin: auto;
                    position: relative;
                    z-index: 10;
                    margin-top: -55px;
                }

                .fn-mb50 {
                    margin-bottom: 53px;
                }

                /*end ability*/

                /*start platform*/
                .platform-content {
                    height: 540px;
                    /*line-height:340px;*/
                    color: #fff;
                    text-align: center;
                    background: url("https://zos.alipayobjects.com/cmsmng/cms/images/ir4eqla3/3cbf66a5-5ab8-4cc3-8089-61a0fec45a59.png") no-repeat;
                    background-position: center center;
                    -webkit-background-size: cover;
                    -moz-background-size: cover;
                    background-size: cover;

                }

                .platform-content .mask {
                    height: 540px;
                    width: 100%;
                    position: absolute;
                    z-index: 10;
                    background: #3E5676;
                    opacity: 0.8;
                }

                .platform-title {
                    position: relative;
                    z-index: 10;
                    padding-top: 62px;
                    font-size: 32px;
                    padding-bottom: 50px;
                }

                .platform-box {
                    position: relative;
                    z-index: 10;
                }

                .platform-box .platform-ul {
                    display: inline-block;
                    /*padding-bottom: 126px;*/
                }

                .platform-box .platform-ul .platform-item {
                    float: left;
                    width: 250px;
                    height: 250px;
                    background: #fff;
                    margin-left: 4px;
                    display: block;
                }

                .platform-box .platform-ul .platform-item:hover {
                    text-decoration: none;
                }

                .platform-box .platform-ul .platform-item:nth-child(1) {
                    margin-left: 0px;
                }

                .platform-item-tip {
                    color: #6D7C8F;
                    text-align: center;
                    padding-top: 20px;
                    padding-left: 42px;
                    padding-right: 42px;
                    font-size: 14px;
                    line-height: 20px;
                }

                .platform-item-title {
                    color: #38425C;
                    padding-top: 78px;
                    font-size: 24px;
                    text-align: center;
                }

                /*end platform*/

                /*start alipays*/
                .alipays-content {
                    padding-bottom: 121px;
                    background: #fff;
                }

                .alipays-img {
                    text-align: center;
                }

                .alipays-img img {
                    height: 349px;
                }

                .alipays-content-title {
                    padding-top: 55px;
                    padding-bottom: 88px;
                    text-align: center;
                    color: #38425C;
                    font-size: 32px;
                }

                /*end alipays*/

                /*start Feelings*/
                .feelings-content {

                    height: 340px;
                    line-height: 340px;
                    font-size: 48px;
                    color: #fff;
                    text-align: center;
                    background: url("https://zos.alipayobjects.com/cmsmng/cms/images/ir3njciw/f465df15-d8f1-40b2-a9a1-f16b602038c6.png") no-repeat #fff;
                    background-position: center center;
                    -webkit-background-size: cover;
                    -moz-background-size: cover;
                    background-size: cover;

                }

                .feelings-content .mask {
                    width: 100%;
                    height: 340px;
                    position: absolute;
                    z-index: 10;
                    background: #324359;
                    opacity: 0.5;
                }

                .feelings-content .feelings-title {
                    position: relative;
                    z-index: 10;
                    text-shadow: 0 0 8px #353535;
                }

                /*end Feelings*/


            </style>

            <!--start  success-->
            <div class="content success-content">
                <div class="success-title">³É¹¦°¸Àý</div>
                <div class="success-list-content">
                    <ul class="success-ul fn-clear">

                        <li class="suc-li" data-url="">
                            <div class="suc-item">
                                <div class="suc-item-type" data-url="">
                                    <a target="_blank"
                                       href="https://open.alipay.com/caseCenter/caseCenter.htm?val=%E9%A4%90%E9%A5%AE"
                                       seed="sucItemType-link">²ÍÒû</a>
                                </div>
                                <div class="suc-item-bg">
                                    <img src="images/b9861e16-88fc-474f-a92a-0e69775e7567.png"
                                         seed="sucItemBg-zosCmsmngCmsImagesIrdja41eB9861e16-88fc-474f-a92a-0e69775e7567"
                                    >
                                </div>
                                <div class="suc-item-logo">
                                    <img src="images/f040026d-6f7f-4dcc-b896-f70398c02aff.png"
                                         seed="sucItemLogo-zosCmsmngCmsImagesIrdj9ygpF040026d-6f7f-4dcc-b896-f70398c02aff"
                                    >
                                </div>
                                <div class="suc-item-title">ÑÅ×ù</div>
                                <div class="suc-item-tip">°ïÖúÉÌ¼Ò½¨Á¢ÒÆ¶¯Ö§¸¶³¡¾°£¬´òÍ¨Ö§¸¶Æ½Ì¨ÓëÉÌ¼ÒCRMÏµÍ³</div>
                                <a class="J_toCaseDetail" target="_blank"
                                   href="https://open.alipay.com/caseCenter/caseCenterDetail.htm?id=8"
                                   seed="sucItem-J_toCaseDetail"></a>
                            </div>
                        </li>

                        <li class="suc-li" data-url="">
                            <div class="suc-item">
                                <div class="suc-item-type" data-url="">
                                    <a target="_blank"
                                       href="https://open.alipay.com/caseCenter/caseCenter.htm?val=%E4%BC%91%E9%97%B2%E5%A8%B1%E4%B9%90"
                                       seed="sucItemType-linkT1">ÐÝÏÐÓéÀÖ</a>
                                </div>
                                <div class="suc-item-bg">
                                    <img src="images/d8fcaf72-f9ef-4827-994a-3b46690b264f.png"
                                         seed="sucItemBg-zosCmsmngCmsImagesIr7825vaD8fcaf72-f9ef-4827-994a-3b46690b264f"
                                    >
                                </div>
                                <div class="suc-item-logo">
                                    <img src="images/209f633b-ab1f-44b2-be97-86a9950ef371.png"
                                         seed="sucItemLogo-zosCmsmngCmsImagesIrdhy5p9209f633b-ab1f-44b2-be97-86a9950ef371"
                                    >
                                </div>
                                <div class="suc-item-title">»ªÙ¢¼Ýµ½</div>
                                <div class="suc-item-tip">ÓÐÐ§½øÐÐ»áÔ±¹ÜÀí£¬ÌáÉýÓÃ»§¸´¹ºÂÊºÍÁô´æÂÊ</div>
                                <a class="J_toCaseDetail" target="_blank"
                                   href="https://open.alipay.com/caseCenter/caseCenterDetail.htm?id=20"
                                   seed="sucItem-J_toCaseDetailT1"></a>
                            </div>
                        </li>

                        <li class="suc-li" data-url="">
                            <div class="suc-item">
                                <div class="suc-item-type" data-url="">
                                    <a target="_blank"
                                       href="https://open.alipay.com/caseCenter/caseCenter.htm?val=%E5%95%86%E8%B6%85"
                                       seed="sucItemType-linkT2">ÉÌ³¬</a>
                                </div>
                                <div class="suc-item-bg">
                                    <img src="images/23e750ac-29a5-4bba-8add-be58e2eb097d.png"
                                         seed="sucItemBg-zosCmsmngCmsImagesIrep444o23e750ac-29a5-4bba-8add-be58e2eb097d"
                                    >
                                </div>
                                <div class="suc-item-logo">
                                    <img src="images/35d90f30-f930-420c-8ffc-e5c2c5e93173.png"
                                         seed="sucItemLogo-zosCmsmngCmsImagesIrm039s935d90f30-f930-420c-8ffc-e5c2c5e93173"
                                    >
                                </div>
                                <div class="suc-item-title">Ã×ÑÅ</div>
                                <div class="suc-item-tip">Ìá¹©ÒÆ¶¯Ö§¸¶ºÍ¾«ÓªÏú·½°¸£¬ÎªÆóÒµ½µµÍ³É±¾ÌáÉýÐ§Òæ</div>
                                <a class="J_toCaseDetail" target="_blank"
                                   href="https://open.alipay.com/caseCenter/caseCenterDetail.htm?id=28"
                                   seed="sucItem-J_toCaseDetailT2"></a>
                            </div>
                        </li>

                        <li class="suc-li" data-url="">
                            <div class="suc-item">
                                <div class="suc-item-type" data-url="">
                                    <a target="_blank"
                                       href="https://open.alipay.com/caseCenter/caseCenter.htm?val=%E5%8C%BB%E7%96%97"
                                       seed="sucItemType-linkT3">Ò½ÁÆ</a>
                                </div>
                                <div class="suc-item-bg">
                                    <img src="images/c83bda7b-5eef-459e-a115-68c852b68350.jpg"
                                         seed="sucItemBg-zosCmsmngCmsImagesIs9nvi3zC83bda7b-5eef-459e-a115-68c852b68350"
                                    >
                                </div>
                                <div class="suc-item-logo">
                                    <img src="images/2d486dee-90c0-417a-9972-ce14f8fa0509.jpg"
                                         seed="sucItemLogo-zosCmsmngCmsImagesIrm0jhff2d486dee-90c0-417a-9972-ce14f8fa0509"
                                    >
                                </div>
                                <div class="suc-item-title">¹ãÖÝ¸¾¶ù</div>
                                <div class="suc-item-tip">ÐÅÓÃ¾ÍÒ½£¬ÁãÅÅ¶Ó£¬ÈÃÒ½ÁÆ±äµÃÎÂÅ¯</div>
                                <a class="J_toCaseDetail" target="_blank"
                                   href="https://open.alipay.com/caseCenter/caseCenterDetail.htm?id=32"
                                   seed="sucItem-J_toCaseDetailT3"></a>
                            </div>
                        </li>

                    </ul>
                </div>
                <div class="button-content">
                    <a target="_blank" class="jui-btn jui-btn-table"
                       href="https://openhome.alipay.com/caseCenter/caseCenter.htm?type=all" seed="buttonContent-juiBtn"
                    >²é¿´¸ü¶à</a>
                </div>
            </div>
            <!--end  success-->
            <!-- end platform-content -->
            <div class="content platform-content">
                <!-- <div class="mask"></div> -->
                <div class="platform-title">ÌØÉ«Æ½Ì¨·þÎñ</div>
                <div class="platform-box ">
                    <div class="platform-ul fn-clear">

                        <div class="platform-item">
                            <div class="platform-item-title">Á÷Á¿¹²Ïí</div>
                            <div class="platform-item-tip">º£Á¿»áÔ±£¬°ïÖúÉÌ¼ÒÕÒµ½¸ü¶àÇ±ÔÚ¿Í»§£¬Á÷Á¿ÇáËÉ±äÏÖ</div>
                        </div>

                        <div class="platform-item">
                            <div class="platform-item-title">ÉÌ¼ÒÍØÕ¹</div>
                            <div class="platform-item-tip">°ÙÍòÉÌ¼Ò£¬ÇáËÉ»ñÈ¡ÉÌ¼Ò×ÊÔ´£¬ÊµÏÖ»¥Àû¹²Ó®</div>
                        </div>

                        <div class="platform-item">
                            <div class="platform-item-title">¼¼ÊõÖ§³Ö</div>
                            <div class="platform-item-tip">¿ìËÙÏìÓ¦£¬µÚÒ»Ê±¼äÎªÄã½â¾ö¸÷Àà¼¼ÊõÎÊÌâ</div>
                        </div>

                        <div class="platform-item">
                            <div class="platform-item-title">ºÏ×÷»ï°éÖ§³Ö</div>
                            <div class="platform-item-tip">¸ß¶î¼¤Àø»Ø±¨£¬´òÔìºÏ×÷¹²Ó®ÉúÌ¬</div>
                        </div>


                    </div>
                </div>
            </div>
            <!-- end platform-content -->

            <!-- start felling-->
            <div class="content feelings-content">
                <!-- <div class="mask"></div> -->
                <div class="feelings-title">ÔÚÒ»Æð£¬´´ÔìÎ´À´</div>
            </div>
            <!-- end felling-->

            <div class="body-footer">
                <!-- FD:98:openhome-fengdie-common/theme/footer.vm:START -->
                <style>
                    /*start footer*/
                    .content.footer-content {
                        /*height:352px;*/
                        /*padding:42px 120px 26px 120px;*/
                        background: #242735;
                        color: #fff;
                        text-align: left;
                    }

                    .footer-content.complete .link-content {
                        display: block;
                    }

                    .footer-content .link-content {
                        font-size: 12px;
                        padding: 42px 10px 26px 10px;
                        border-bottom: solid 1px rgba(255, 255, 255, .1);
                        display: none;
                        width: 1180px;
                        margin: auto;
                    }

                    .footer-content .right-content {
                        text-align: center;
                        font-size: 12px;
                        /*padding:25px 0px;*/
                        padding-top: 28px;
                        /*padding-bottom:25px;*/
                        opacity: 0.8;
                    }

                    .footer-content .right-content .server {
                        text-align: center;
                        font-size: 12px;
                        color: #242735;
                    }

                    .footer-content .service-icon {
                        vertical-align: sub;
                        margin-right: 10px;
                    }

                    .link-list-content {
                        opacity: 0.8;

                    }

                    .link-content {

                        padding-left: 10px;
                    }

                    ul.link-list-content > li {
                        float: left;
                        /*border:solid 1px #f00;*/
                    }

                    .link-list-content .list-title {
                        padding-bottom: 20px;
                        font-size: 14px;
                    }

                    .link-content .web-content {
                        width: 200px;
                        margin-right: 20px;
                    }

                    .link-content .web-content .web-ul {
                        line-height: 30px;
                    }

                    .link-content .links-content {
                        padding-left: 0px;
                    }

                    .link-content .links-content .link-ul {
                        width: 360px;

                    }

                    .link-content .links-content .link-ul li {
                        float: left;
                        width: 120px;
                        line-height: 30px;
                    }

                    .link-content .services-content {
                        padding-left: 100px;
                    }

                    .link-content .services-content .list-ul {
                        line-height: 24px;
                        width: 210px;
                    }

                    .link-content .services-content .list-ul li {
                        padding-bottom: 12px;
                    }

                    .link-content .services-content .service-icon {
                        width: 15px;
                    }

                    .link-content .business-content {
                        padding-left: 60px;
                    }

                    .link-content .business-content .business-ul {
                        width: 225px;
                        line-height: 24px;
                    }

                    .link-content .business-content .service-icon {
                        width: 14px;
                    }

                    .link-content .business-content .business-ul li {
                        padding-bottom: 12px;
                    }

                    .footer-content a {
                        color: #fff;
                    }

                    .toHelp {
                        display: block;
                    }

                    /*end footer*/

                    /*ÖÇÄÜÐ¡±¦*/
                    #onlineService {
                        top: auto;
                        right: auto;
                        bottom: 184px;
                        left: 50%;
                        margin-left: 609px;
                    }

                    #onlineService a img {
                        width: 40px;
                    }

                    #onlineService .J-close-online-service-trigger {
                        display: none;
                    }
                </style>
                <!-- start footer -->

                <div class="content footer-content complete" id="black-footer">
                    <div class="link-content">
                        <ul class="link-list-content fn-clear">
                            <li class="web-content">
                                <div class="list-title">Ïà¹ØÍøÕ¾</div>
                                <ul class="web-ul">

                                    <li><a href="http://www.antgroup.com/" target="_blank" seed="webUl-link"
                                    >ÂìÒÏ½ð·þ</a>
                                    </li>

                                    <li><a href="https://www.alipay.com/" target="_blank" seed="webUl-linkT1"
                                    >Ö§¸¶±¦</a>
                                    </li>

                                    <li><a href="http://www.koubei.com/" target="_blank" seed="webUl-linkT2"
                                    >¿Ú±®</a></li>

                                    <li><a href="https://b.alipay.com/" target="_blank" seed="webUl-linkT3"
                                    >ÉÌ¼ÒÆ½Ì¨</a>
                                    </li>

                                    <li><a href="https://www.mybank.cn/" target="_blank" seed="webUl-linkT4"
                                    >ÍøÉÌÒøÐÐ</a>
                                    </li>

                                    <li><a href="https://b.zmxy.com.cn/index.htm" target="_blank" seed="webUl-linkT5"
                                    >Ö¥ÂéÐÅÓÃ</a></li>

                                </ul>
                            </li>
                            <li class="links-content">
                                <div class="list-title">ÓÑÇéÁ´½Ó</div>
                                <ul class="link-ul fn-clear">

                                    <li><a href="http://www.alibabagroup.com/cn/global/home" target="_blank"
                                           seed="linkUl-link"
                                    >°¢Àï°Í°Í¼¯ÍÅ</a></li>

                                    <li><a href="https://www.taobao.com/" target="_blank" seed="linkUl-linkT1"
                                    >ÌÔ±¦</a></li>

                                    <li><a href="https://www.alitrip.com/" target="_blank" seed="linkUl-linkT2"
                                    >È¥°¡</a>
                                    </li>

                                    <li><a href="http://www.yunos.com/" target="_blank" seed="linkUl-YunOS"
                                    >YunOS</a></li>

                                    <li><a href="https://www.tmall.com/" target="_blank" seed="linkUl-linkT3"
                                    >ÌìÃ¨</a></li>

                                    <li><a href="https://www.1688.com/" target="_blank" seed="linkUl-linkT4"
                                    >1688</a></li>

                                    <li><a href="https://ju.taobao.com/" target="_blank" seed="linkUl-linkT5"
                                    >¾Û»®Ëã</a>
                                    </li>

                                    <li><a href="http://www.alimama.com/index.htm" target="_blank" seed="linkUl-linkT6"
                                    >°¢ÀïÂèÂè</a></li>

                                    <li><a href="https://www.aliyun.com/" target="_blank" seed="linkUl-linkT7"
                                    >°¢ÀïÔÆ¼ÆËã</a>
                                    </li>

                                    <li><a href="https://www.aliexpress.com/" target="_blank" seed="linkUl-linkT8"
                                    >È«ÇòËÙÂôÍ¨</a>
                                    </li>

                                    <li><a href="https://www.alibaba.com/" target="_blank" seed="linkUl-linkT9"
                                    >°¢Àï°Í°Í¹ú¼ÊÕ¾</a>
                                    </li>

                                </ul>
                            </li>
                            <li class="services-content">
                                <div class="list-title">ÔÚÏß¿Í·þ</div>
                                <ul class="list-ul">
                                    <!-- <li>ÎªÂìÒÏÉÌ¼ÒÌá¹©µÄÔÚÏß·þÎñÍ¨µÀ£¬±ã½Ý¸ßÐ§£¬×ÉÑ¯Ê×Ñ¡¡£</li> -->
                                    <li>·þÎñÊ±¼ä£ºÖÜÒ»ÖÁÖÜÈÕ 8:00-24:00<br>
                                        <a href="https://cschannel.alipay.com/newPortal.htm?scene=kfpt" target="_blank"
                                           seed="listUl-link">
                                            <img class="service-icon"
                                                 src="images/oDZiPSFbEqVOaxI.png">
                                            <span>µã´Ë×ÉÑ¯</span>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="business-content">
                                <div class="list-title">¿ª·¢Õß×¨Ïß</div>
                                <ul class="business-ul">
                                    <!-- <li>ÎªÉÌ»§Ìá¹©µÄµç»°·þÎñÍ¨µÀ£¬½¨ÒéÏÈ³¢ÊÔÍøÕ¾×ÔÖú»òÔÚÏß¿Í·þ¡£</li> -->
                                    <li>·þÎñÊ±¼ä£ºÖÜÒ»ÖÁÖÜÈÕ 8:00-24:00<br>
                                        <img class="service-icon"
                                             src="images/dbfPUBKQSTLClOH.png"
                                             seed="businessUl-serviceIcon"><span>0571-88158090</span>
                                    </li>
                                </ul>
                            </li>

                        </ul>
                    </div>
                    <div class="right-content">
                        Copyright @ 2016 º¼ÖÝÂìÒÏ½ð·þ £ü ICPÖ¤ÕãB2-20160559
                        <div class="server" id="ServerNum"> openhome-60-3 &nbsp; 0ae40c471481778031306412930623_0</div>
                    </div>
                </div>

                <div style="display:none">onlineServer</div>
            </div>
</body>
</html>
