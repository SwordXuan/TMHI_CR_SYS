<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="renderer" content="webkit" />
    <title>约车系统后台管理系统</title>
    <!-- CSS文件 -->
    <link href="../css/bootstrap.min14ed.css" rel="stylesheet">
    <link href="../css/font-awesome.min93e3.css" rel="stylesheet">
    <link href="../css/animate.min.css" rel="stylesheet">
    <link href="../css/style.min862f.css" rel="stylesheet">
    <link href="../css/bootstrap-table.css" rel="stylesheet">
</head>

<body class="gray-bg top-navigation">

    <div id="wrapper">
        <div id="page-wrapper" class="gray-bg">
            <div class="row border-bottom white-bg">
                <nav class="navbar navbar-static-top" role="navigation">
                    <div class="navbar-header">
                        <button aria-controls="navbar" aria-expanded="false" data-target="#navbar" data-toggle="collapse" class="navbar-toggle collapsed" type="button">
                            <i class="fa fa-reorder"></i>
                        </button>
                        <a href="#" class="navbar-brand">战舰约车系统后台管理系统</a>
                    </div>
                    <div class="navbar-collapse collapse" id="navbar">
                        <ul class="nav navbar-nav">
                            <li class="active">
                                <a aria-expanded="false" role="button" href="index-2.html"> 返回首页</a>
                            </li>
                            <li class="dropdown">
                                <a aria-expanded="false" role="button" href="#" class="dropdown-toggle" data-toggle="dropdown"> 权限分配 <span class="caret"></span></a>
                                <ul role="menu" class="dropdown-menu">
                                    <li><a href="#">管理员管理</a>
                                    </li>
                                    <li><a href="#">角色管理</a>
                                    </li>
                                    <li><a href="#">资源管理</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a aria-expanded="false" role="button" href="#" class="dropdown-toggle" data-toggle="dropdown"> 招募管理 <span class="caret"></span></a>
                                <ul role="menu" class="dropdown-menu">
                                    <li><a href="#">招募信息</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a aria-expanded="false" role="button" href="#" class="dropdown-toggle" data-toggle="dropdown"> 用户管理 <span class="caret"></span></a>
                                <ul role="menu" class="dropdown-menu">
                                    <li><a href="#">用户信息</a>
                                    </li>
                                </ul>
                            </li>

                        </ul>
                        <ul class="nav navbar-top-links navbar-right">
                            <li>
                                <a href="login.html">
                                    <i class="fa fa-sign-out"></i> 退出
                                </a>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
            <div class="wrapper wrapper-content">
                <div class="container">
                    <div class="row">
                        <div class="col-md-2">
                            <div class="ibox float-e-margins">
                                <div class="ibox-title">
                                    <span class="label label-success pull-right">月</span>
                                    <h5>浏览量</h5>
                                </div>
                                <div class="ibox-content">
                                    <h1 class="no-margins">386,200</h1>
                                    <div class="stat-percent font-bold text-success">98% <i class="fa fa-bolt"></i>
                                    </div>
                                    <small>总计浏览量</small>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="ibox float-e-margins">
                                <div class="ibox-title">
                                    <span class="label label-info pull-right">年</span>
                                    <h5>车队</h5>
                                </div>
                                <div class="ibox-content">
                                    <h1 class="no-margins">80,800</h1>
                                    <div class="stat-percent font-bold text-info">20% <i class="fa fa-level-up"></i>
                                    </div>
                                    <small>新车队</small>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4">
                                                          <div class="ibox float-e-margins">
                                                              <div class="ibox-title">
                                                                  <span class="label label-primary pull-right">今天</span>
                                                                  <h5>访问人次</h5>
                                                              </div>
                                                              <div class="ibox-content">

                                                                  <div class="row">
                                                                      <div class="col-md-6">
                                                                          <h1 class="no-margins"> 406,420</h1>
                                                                          <div class="font-bold text-navy">44% <i class="fa fa-level-up"></i> <small>增长较快</small>
                                                                          </div>
                                                                      </div>
                                                                      <div class="col-md-6">
                                                                          <h1 class="no-margins">206,120</h1>
                                                                          <div class="font-bold text-navy">22% <i class="fa fa-level-up"></i> <small>增长较慢</small>
                                                                          </div>
                                                                      </div>
                                                                  </div>


                                                              </div>
                                                          </div>
                                                      </div>
                        <div class="col-md-4">
                            <div class="ibox float-e-margins">
                                <div class="ibox-title">
                                    <h5>咕咕率</h5>
                                    <div class="ibox-tools">
                                        <span class="label label-primary">2017.08更新</span>
                                    </div>
                                </div>
                                <div class="ibox-content">
                                    <h1 class="no-margins">100.0000%</h1>
                                    <div class="stat-percent font-bold text-success">
                                    </div>
                                    <small>心疼被咕</small>
                                </div>

                            </div>
                        </div>
                    </div>

                    <div id="toolbar" class="btn-group">
                         <button id="btn_add" type="button" class="btn btn-default">
                             <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>新增
                         </button>
                         <button id="btn_edit" type="button" class="btn btn-default">
                            <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>修改
                         </button>
                         <button id="btn_delete" type="button" class="btn btn-default">
                             <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>删除
                         </button>
                     </div>

                     <table id="indexTable"></table>
                     </div>
                    </div>

                </div>

            </div>
            <div class="footer">
                <div class="pull-right">
                    By：SwordXuan
                </div>
                <div>
                    <strong>Copyright</strong> 战舰约车系统后台管理系统 &copy; 2017
                </div>
            </div>
        </div>
    </div>

    <script src="../js/jquery.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/content.min.js?"></script>
    <script src="../js/plugins/flot/jquery.flot.js"></script>
    <script src="../js/plugins/flot/jquery.flot.tooltip.min.js"></script>
    <script src="../js/plugins/flot/jquery.flot.resize.js"></script>
    <script src="../js/plugins/chartJs/Chart.min.js"></script>
    <script src="../js/plugins/peity/jquery.peity.min.js"></script>
    <script src="../js/demo/peity-demo.min.js"></script>
    <script src="../js/bootstrap-table.js"></script>
    <script src="../js/bootstrap-table-zh-CN.js"></script>
    <script src="index.js"></script>
    <script type="text/javascript">

    </script>
</html>