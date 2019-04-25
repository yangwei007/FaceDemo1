<%@ page language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,initial-scale=1.0,user-scalable=no" />
<meta name="apple-mobile-web-app-capable" content="yes" />
<title>管理员详情</title>

<link rel="stylesheet" type="text/css" href="js/admin/scripts/artdialog/ui-dialog.css" />
<link rel="stylesheet" type="text/css" href="css/admin/skin/icon/iconfont.css" />
<link rel="stylesheet" type="text/css" href="css/admin/skin/default/style.css" />

<script type="text/javascript" src="js/admin/scripts/jquery/jquery-1.11.2.min.js"></script>
<script type="text/javascript" src="js/admin/scripts/jquery/Validform_v5.3.2_min.js"></script>  
<script type="text/javascript" src="js/admin/scripts/artdialog/dialog-plus-min.js"></script>
<script type="text/javascript" src="js/admin/scripts/webuploader/webuploader.min.js"></script>
<script type="text/javascript" charset="utf-8" src="js/admin/laymain.js"></script>
<script type="text/javascript" charset="utf-8" src="js/admin/common.js"></script>

<script type="text/javascript">
    $(function () {
        //初始化表单验证
        $("#form1").initValidform();
        //初始化上传控件
        $(".upload-img").InitUploader({ sendurl: "../../tools/upload_ajax.ashx", swf: "../../scripts/webuploader/uploader.swf" });
    });
    
      function changes(obj){
      var opt = obj.options[obj.selectedIndex].text;  
         
      if('初级管理员'==opt)   
       {  
           $("#div_xzb").show();  
       }
      else 
       {  
          $("#div_xzb").hide();  
          $("#xzb2").attr("disabled","disabled"); 
          $("#xzb2").get(0).selectedIndex=1;  
        }
      
       
     }  
</script>
</head>
<body class="mainbody">
<form method="post" action="manager_edit.aspx?action=Add" id="form1">
<div class="aspNetHidden">
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__LASTFOCUS" id="__LASTFOCUS" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKLTYwMDkyNzEwNA9kFgICAQ9kFgYCAQ8QZBAVBxLor7fpgInmi6nop5LoibIuLi4P6LaF57qn566h55CG57uED+ezu+e7n+euoeeQhuWRmAzmiYDplb/mnYPpmZAS5Z+O5Lmh5bGF5L+d5Lit5b+DDOacuuWFs+S/nemZqQbmtYvor5UVBwABMQEyATMBNAE1ATYUKwMHZ2dnZ2dnZ2RkAgMPEGRkFgECAWQCBQ8WAh4HVmlzaWJsZWcWAgIBDxBkEBUbFeivt+mAieaLqeS5oemVh+WKni4uLgnmnLHpmIHkuaEJ6KSa5rKz6ZWHCeW8oOW+l+S5oQnpopblt53lip4J5bCP5ZCV5LmhCeWkj+mDveWKngnml6DmooHplYcJ5paH5q6K6ZWHCemhuuW6l+mVhwnnpZ7lkI7plYcJ5bGx6LSn5LmhCea1heS6leS5oQnno6jooZfkuaEJ5qKB5YyX6ZWHCemSp+WPsOWKngnpuKDlsbHplYcJ54Gr6b6Z6ZWHCeiKseefs+S5oQnpuL/nlYXplYcJ6Z+p5Z+O5YqeCemDrei/numVhwnlj6Tln47plYcJ5pa55bGx6ZWHCeaWueWyl+S5oQnojIPlnaHplYcJ6IuM5bqE5LmhFRsACeacsemYgeS5oQnopJrmsrPplYcJ5byg5b6X5LmhCemiluW3neWKngnlsI/lkJXkuaEJ5aSP6YO95YqeCeaXoOaigemVhwnmlofmrorplYcJ6aG65bqX6ZWHCeelnuWQjumVhwnlsbHotKfkuaEJ5rWF5LqV5LmhCeejqOihl+S5oQnmooHljJfplYcJ6ZKn5Y+w5YqeCem4oOWxsemVhwnngavpvpnplYcJ6Iqx55+z5LmhCem4v+eVhemVhwnpn6nln47lip4J6YOt6L+e6ZWHCeWPpOWfjumVhwnmlrnlsbHplYcJ5pa55bKX5LmhCeiMg+WdoemVhwnoi4zluoTkuaEUKwMbZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZGQYAQUeX19Db250cm9sc1JlcXVpcmVQb3N0QmFja0tleV9fFgEFCGNiSXNMb2Nr+cFedHN2adGau+oFqeNcySvkYy9U9TZLj3H1m+/boa8=" />
</div>
<script type="text/javascript">
    $(function () {
        //初始化表单验证
         
        var lock='${managerDetial.is_lock}'; 
        if(lock!=0)   
           $("#cbIsLock").click(); 
           
         
    });
  </script>

<div class="aspNetHidden">

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="32BA39F4" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEdAC5vyWlmQUu0Cd9FtVriJx2cJNc9N2sZRgHQr0c8oBmMvyWH/otKA12bY8M1IRpJFzJqLJF8libJlanDSMTb1QBbmeRr6sdoPfvU07H8WyTbFjME6pIn9WnRtxjmGK/dhhdHmpWCqiQHaqV6CesTm5TAUulrLCak5Mj7YLs4ipiyPRv17zoz/ce8CPYu9S1wFKrdXlr6cNp+xslLYi6qPAsxVTQNw6opmbFnWJIkOMENKtKfyRP3/LiVMTAKhP6tyKFJZ1CA8bio1bJF1jQrnTJWKyHkYGoNcPuUzEwnMvANO4pM2nK2tzkmLdcQfbfGGpANh3RJxEW3fTWy8IZuQlzOJ4Emua6MZ1GnVNCmHedF4PrZZGUDb3N6Z6Zixk9qr3ZlxFQlJwokHpX5h3o5nYSjw2VeZVkF8aidMAGvrRFFaRG2an6HkefDIPm7ZQQ1VxBYuW849pjo47duQ7gwnTre2kScC7G0slt0MOUGHziMnHF201SIPVMesNY/sh87E/Qr71LjrnEzL0aAxjRPH4O/Uv0cHECMKqswvkwl2lroe0Qrs+dAV2PcX19aAXg2flIt9dcsTxGIJC5Wlg69kvbYOC3NprCjrHA2Que5c8sOvBkDnmk7Nppid4T8yLo8JSrNvJyehZfdBe6pC78Zxlsue6tr7b+Jv+8WtDOL2GExI/Wpo66ce0uh9XXGyTafIUd1z/mwd7Q1gE8vVwRfh/BWJdtcfWu8XEd7YQFygcYSeDibdcEMRwMGYs8BoHQs7fMpx+8poDnFLfPrx3+IHYDtmvC5IRHJAl8BkDkwvjAC0Y0ujQmoDGeIZ7lMpFKi03z6HaaD64bAEKCq47uAqKpwY3plgk0YBAefRz3MyBlTcHY2+Mc6SrnAqio3oCKbxYZqqO2nsNYUtW1WH4d+mUfy7ZZzDRG/XNqDaJpblqPI6yB6zvk7EnSXkkh7ys8OfVs85pbWlDO2hADfoPXD/5tdwDwEJbfn2nrgkmxsNFF0UeMtWd3l0hZ+5/zmgtYLdVg=" />
</div>
<!--导航栏-->
<div class="location">
  <a href="manager_list.aspx" class="back"><i class="iconfont icon-up"></i><span>返回列表页</span></a>
  <a href="../center.aspx"><i class="iconfont icon-home"></i><span>首页</span></a>
  <i class="arrow iconfont icon-arrow-right"></i>
  <a href="manager_list.aspx"><span>管理员</span></a>
  <i class="arrow iconfont icon-arrow-right"></i>
  <span>管理员详情</span>
</div>
<div class="line10"></div>
<!--/导航栏-->

<!--内容-->
<div id="floatHead" class="content-tab-wrap">
  <div class="content-tab">
    <div class="content-tab-ul-wrap">
      <ul>
        <li><a class="selected" href="javascript:;">管理员信息</a></li>
      </ul>
    </div>
  </div>
</div>

<div class="tab-content">
  
 <c:choose>
<c:when test="${!empty managerDetial }">
  <dl>
    <dt>管理角色</dt>
    <dd>
    <input name="role_name" type="text" value="${managerDetial.role_name }" readonly="readonly" id="role_name" class="input normal" datatype="*1-18" sucmsg=" " />
    </dd>
  </dl>
   
  
  <dl>
    <dt>管理类型</dt>
    <dd>
      <div class="rule-multi-radio">
          <span id="rblType">
        
          <input id="rblType_0" type="radio" name="rblType" value="机关事业养老保险" ${managerDetial.user_type=='机关事业养老保险'?'checked=\'checked\'':'' } ><label for="rblType_0">机关事业养老保险</label>
          <input id="rblType_1" type="radio" name="rblType" value="城乡居民养老保险" ${managerDetial.user_type=='城乡居民养老保险'?'checked=\'checked\'':'' } ><label for="rblType_1">城乡居民养老保险</label>
          <input id="rblType_2" type="radio" name="rblType" value="企业职工养老保险" ${managerDetial.user_type=='企业职工养老保险'?'checked=\'checked\'':'' } ><label for="rblType_2">企业职工养老保险</label>
          </span>
      </div>
    </dd>
  </dl>
  
  <%-- <dl>
    <dt>所属乡镇办</dt>
    <dd>
    <input name="role_name" type="text" value="${managerDetial.xzb }" readonly="readonly" id="role_name" class="input normal" datatype="*1-18" sucmsg=" " />
    </dd>
  </dl> --%>
   <c:if test="${!empty managerDetial.xzb }"> 
  <dl>
    <dt>乡镇办</dt>
    <dd><input name="xzb" type="text" value="${managerDetial.xzb }"  readonly="readonly" id="xzb" class="input normal" /></dd>
  </dl>
  </c:if>
  
    <dl>
    <dt>是否启用</dt>
    <dd>
      <div class="rule-single-checkbox">
          <input id="cbIsLock" type="checkbox" name="cbIsLock" checked="checked" />
      </div>
      <span class="Validform_checktip">*不启用则无法使用该账户登录</span>
    </dd>
  </dl>
   
  
  <dl>
    <dt>用户名</dt>
    <dd><input name="txtUserName" type="text" value="${managerDetial.user_name }" readonly="readonly" id="txtUserName" class="input normal" datatype="*1-18" sucmsg=" " /></dd>
  </dl> 
  <dl>
    <dt>登录密码</dt>
    <dd><input name="txtPassword" type="password" id="txtPassword"  readonly="readonly" class="input normal" datatype="*6-20" nullmsg="请设置密码" errormsg="密码范围在6-20位之间" sucmsg=" " value="0|0|0|0" /></dd>
  </dl>
   
  <dl>
    <dt>姓名</dt>
    <dd><input name="txtRealName" type="text" value="${managerDetial.real_name }" readonly="readonly" id="txtRealName" class="input normal" /></dd>
  </dl>
  
  <dl>
    <dt>电话</dt>
    <dd><input name="txtTelephone" type="text"  value="${managerDetial.mobile }" readonly="readonly"  value="13213375923"  readonly="readonly" id="txtTelephone" class="input normal" /></dd>
  </dl>
  
  <dl>
  <dt>创建时间</dt>
    <dd><input name="add_time" type="text" value="${managerDetial.add_time }" readonly="readonly" id="add_time" class="input normal"/></dd>
  </dl>
</c:when>
<c:otherwise >
  <dd>未查询到相关信息！</dd>
</c:otherwise>
</c:choose>

<!--/内容-->

<!--工具栏-->
<div class="page-footer">
  <div class="btn-wrap">
    <!-- <input type="submit" name="btnSubmit" value="提交保存" id="btnSubmit" class="btn" /> -->
    <input name="btnReturn" type="button" value="返回上一页" class="btn yellow" onclick="javascript:history.back(-1);" />
  </div>
</div>
<!--/工具栏-->

</form>
</body>
</html>

</html>