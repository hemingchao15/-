<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Web2.aspx.cs" Inherits="Chapter8.webApp.Web2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>浙江杭州图书馆</title>
    <style type="text/css">
     .tt
           {
               width:664px;
               margin:0 auto;
               height  : 485px;
        }
                 .style1
        {
            width: 149px;
            height: 35px;
        }
        .jb
        {
            float:left;
          margin-top:-24px;
          margin-left:155px;
            width: 491px;
            height: 22px;
            background:#EEE9BF;
            line-height:22px;
            
            }
                 </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="tt">
    <h1 align ="center">浙江杭州图书馆</h1> 
     &nbsp;&nbsp;
    <a href="http://localhost:1077/Web1.aspx">返回</a>
     &nbsp;&nbsp;
    <div style="width: 149px; height: 33px">
    
        <img alt="" class="style1" src="Images/loog.PNG" /></div>
        <a class="jb">用户登录</a>
        <div style="height: 41px">
        </div>
        <div >
        <b>用户名：</b><asp:TextBox ID="txtUser" runat="server" MaxLength="14"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtUser" Display="Dynamic" ErrorMessage="请输入用户名" ForeColor="Red">
    </asp:RequiredFieldValidator><br />
    <br />
    不超过7个汉字，或14个字节（数字，字母和下划线）<br />
    
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ErrorMessage="用户名仅可使用汉字、数字、字母和下划线" ControlToValidate="txtUser" ForeColor="Red" 
            ValidationExpression="[a-zA-Z0-9_\u4e00-\u9fa5]{0,}" Display ="Dynamic"></asp:RegularExpressionValidator>
     <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="用户名最长不超过7个汉字，或14个字节（数字，字母和下划线）"  ControlToValidate="txtUser" ForeColor="Red" 
            Display="Dynamic"></asp:CustomValidator><br />
            <br />
            <b>密码：</b><asp:TextBox ID="txtPser" runat="server" Width="92px" TextMode="Password" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"  
            ErrorMessage="请输入密码" Display="Dynamic" 
            ForeColor="Red" ControlToValidate="txtPser"></asp:RequiredFieldValidator><br />
            <br />
            </div>
            <div style="height: 24px">
            </div>
            &nbsp;&nbsp;
            <asp:Button ID="btnOK" runat="server" Text="登陆" onclick="btnOK_Click" 
            Height="23px" Width="48px"/>
        </div>
    </div>
    </form>
</body>
</html>
