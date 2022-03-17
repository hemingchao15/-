<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Web3.aspx.cs" Inherits="Chapter8.webApp.Web3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>浙江杭州图书馆</title>
     <style type="text/css">
    .ll
        {
            background:#EEC591;
            float:left;
             margin-top:0px;
             margin-left:0px;
            }
         .bb
         {
             float:left;
             margin-top:15px;
             margin-left:420px;
             text-align:right;
             }
     .tt
           {
               width:663px;
               margin:0 auto;
               height  : 485px;
        }
          .ii
           {
               width: 662px;
               height:25px;
               background:#00B2EE;
               float:left;
               margin :0 auto;
               margin-left:0px;
               } 
               .pl
             {
                 float:left;
             margin-top:-30px;
             margin-left:0px;
                 }
                 </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="tt">
    <h1 align ="center">浙江杭州图书馆</h1>  
    <div style="width: 662px; height: 52px" class="ll">
    <div class="bb">
        <a href="http://localhost:1077/Web2.aspx">登录&nbsp;</a>
        <a href="http://localhost:1077/Web3.aspx"> 续借</a>&nbsp; 
        <a href="http://localhost:1077/Changepwd.aspx">修改密码&nbsp;</a> 
        <a href="http://localhost:1077/Web6.aspx">退出</a>
        </div>   
 
      <img src="Images/loog.PNG" style="height: 48px" class="pl"/>         
    </div>
    <div class="ii" align ="center">
    <a href="http://localhost:1077/Web1.aspx">首页</a>|
    <a href="http://localhost:1077/Booka.aspx">书架</a>|
    <a href="http://localhost:1077/Books.aspx">新书推荐</a>|
    <a href="http://localhost:1077/Bookb.aspx">图书馆介绍</a>
    </div>&nbsp;
    <h2>请选择：</h2>
    <div align ="center"><h1><a href="http://localhost:1077/Web5.aspx">>借书</a></h1></div>
    <div align ="center"><h1> <a href="http://localhost:1077/Web4.aspx">>还书</a></h1></div>
    </div>
    
    </form>
</body>
</html>
