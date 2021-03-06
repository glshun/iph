<%@ page language="java" import="java.util.*,cn.fam1452.dao.pojo.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ include file="../jstl.jsp" %>
<!DOCTYPE HTML >
<html>
  <head>
  <meta http-equiv="X-UA-Compatible" content="IE=8">
    <base href="<%=basePath%>">
    <title>新闻管理</title>
	<!--
	-->
	<link rel="stylesheet" type="text/css" href="css/default/om-default.css">
	<script type="text/javascript" src="js/library/jquery-1.7.1.min.js"></script>
	<script type="text/javascript" src="js/library/operamasks-ui.min.js"></script>
	<script type="text/javascript" src="js/library/jqueryAjaxBox.js"></script>
	
	<link rel="stylesheet" type="text/css" href="css/ht_base_layout.css">
	<link rel="stylesheet" type="text/css" href="css/default/toolbar.css">
	<script type="text/javascript" src="js/library/editor/omeditor.js"></script>
	<script type="text/javascript" src="js/news.js"></script>
	
	<style type="text/css">
       label.error{
        background: #fff6bf url(images/errorIcon.png) center no-repeat;
		background-position: 5px 50%;
		text-align: left;
		padding: 2px 20px 2px 25px;
		border: 1px solid #ffd324;
		display: none;
		width: 200px;
		margin-left: 10px;
       }
    </style>
	
  </head>
  
  <body>
    <jsp:include page="header.jsp" flush="true" />
    
    <div id="pageleft">
    	<!-- 左侧菜单 -->
    	<div class="left2_1">添加新闻</div>
    	<div class="left2_1"><a href="ht/newslist.do" class="a3">新闻管理</a></div>
    </div>
    <div id="center_right">
    	<!-- 右侧内容
    	<span id="toolbar" class="om-widget-header om-corner-all">
	        <a id="updatebut"  href="javascript:void(0)">修改</a>
	        <a id="del"  href="javascript:void(0)">删除</a>
    	</span>
    	 -->
        
        <div id="tab1">
        <form action="#" id="savenewsfm" method="post">
        	<table width="100%" border="0" style="border:#bfd0e1 1px solid">
        	<tr>
                <td colspan="2">&nbsp;&nbsp; 
                提示：标有 <span class="red_asterisk">*</span>  的项为必填项
                </td>
              </tr>
              <tr>
                <td height="30"  class="table_td_fieldlab">&nbsp;<span class="red_asterisk">*</span>新闻标题:</td>
                <td>&nbsp;<input id = "title" name="title" class="boxinput3"/></td>
              </tr>
              <tr>
                <td height="30"   class="table_td_fieldlab">&nbsp;推荐为图片新闻:</td>
                <td>&nbsp; <input type="checkbox" id = "isPicNews" name="isPicNews" /> 
                	&nbsp;&nbsp;&nbsp;<input id = "comboCateg" /></td>
              </tr>
              <tr>
                <td height="30"  class="table_td_fieldlab">&nbsp;<span class="red_asterisk">*</span>内容:</td>
                <td>&nbsp;<textarea id="contentId" name="content" class="editor"></textarea> </td>
              </tr>
              <tr>
			    <td height="40" class="table_td_fieldlab">选择文件：</td>
			    <td><label>
			      <input type="file" name="file_upload" id="file_upload" />
			    	</label></td>
			    </tr>
              <tr>
                <td >&nbsp; </td>
                <td>&nbsp; <span id="errormsg" class="errorMessages"></span></td>
              </tr>
              <tr>
                <td colspan="2" align="center">&nbsp;&nbsp; 
                <input id="savebut"  type="image" src="images/baocun.png" value=" 保  存 " /> 
                &nbsp;&nbsp;&nbsp;&nbsp; 
                <!--  
                <input id="clearbut"  type="button" name="清空" value="清空" style="height: 22px;" /> 
                -->
                </td>
              </tr>
			   
            </table>
            </form>
        </div>
        
    </div>
    
    <jsp:include page="footer.jsp" flush="true" />
  </body>
</html>
