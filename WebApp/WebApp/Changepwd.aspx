<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Changepwd.aspx.cs" Inherits="Chapter8.webApp.Changepwd" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>浙江杭州图书馆</title>
    <style type="text/css">
        .style2
        {
            width: 644px;
            height: 52px;
        }
        .a
      {
         float:left;
          margin-top:-25px;
          margin-left:480px;
         width:150px;         
            height: 18px;
        }
        #form1
        {
            height: 489px;
            width: 1141px;
        }
         .aa
        {
            background:#EEC591;
            float:left;
             margin-top:0px;
             margin-left:0px;
            }
         .bb
         {
             float:left;
             margin-top:-30px;
             margin-left:400px;
             text-align:right;
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
          
                  .tt
           {
               width:664px;
               margin:0 auto;
               height  : 485px;
        }
       
    </style>
</head>
<body style="height: 503px">
    <form id="form1" runat="server">
    <div class="tt">
    <h1 align ="center">浙江杭州图书馆</h1>
    <div style="width: 662px; height: 52px" class="aa">    
    <img src="Images/loog.PNG" style="height: 48px" /></div>
    <div class="bb">
    <a href="http://localhost:1077/Web2.aspx">登录&nbsp;</a>
    <a href="http://localhost:1077/Web3.aspx"> 续借</a>&nbsp; 
    <a href="http://localhost:1077/Changepwd.aspx">修改密码&nbsp;</a> 
    <a href="http://localhost:1077/Web6.aspx">退出</a>
    </div>

    <div class="ii" align ="center">
    <a href="http://localhost:1077/Web1.aspx">首页</a>|
   <a href="http://localhost:1077/Booka.aspx">书架</a>|
    <a href="http://localhost:1077/Books.aspx">新书推荐</a>|
    <a href="http://localhost:1077/Bookb.aspx">图书馆介绍</a>
    </div>


    <div align ="center" style="height: 380px" >
        <p><img alt="" class="style2" src="Images/更改密码.jpg" /></p>&nbsp;
        <div style="width: 291px" >管理员名称： <asp:TextBox ID="txtName" runat="server" width="150px" height="18px"></asp:TextBox></div>&nbsp; 
    
        <div style="width: 291px">原密码：&nbsp; &nbsp;&nbsp;<asp:TextBox ID="txtYPwd" runat="server"  TextMode="Password" width="150px" height="18px" ></asp:TextBox></div>&nbsp;
           
       <div style="width: 291px">新密码： &nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtXPwd" runat="server"  TextMode="Password" width="150px" height="18px" ></asp:TextBox></div>&nbsp; 
       
      <div style="width: 291px">确认新密码： <asp:TextBox ID="txtSXPwd" runat="server"  TextMode="Password" width="150px" height="18px" ></asp:TextBox></div>&nbsp;
      
      <a class="a"><asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="txtXPwd" ControlToValidate="txtSXPwd" ErrorMessage="密码输入不一致！"></asp:CompareValidator></a>
    
      &nbsp; &nbsp;
     <div style="width: 610px">
    <asp:Button ID="btnSave" runat="server" onclick="btnSave_Click" Text="保存" />&nbsp; &nbsp;
    <asp:Button ID="btnCancel" runat="server" onclick="btnCancel_Click" Text="重置" />
  </div>
   </div>
    </form>
    </body>
</html>
