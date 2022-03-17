<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Books.aspx.cs" Inherits="Chapter8.webApp.Books" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>浙江杭州图书馆</title>
    <style type="text/css">
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
               height:23px;
               background:#00B2EE;
               float:left;
               margin-left:0px;
            margin-right: auto;
            margin-top: 0;
            margin-bottom: 0;
        } 
         .tt
           {
               width:661px;
               margin:0 auto;
               height  : 485px;
        }
               </style>
</head>
<body>
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
    <div align ="center">
     
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            Width="700px">
        <Columns>
            <asp:BoundField DataField="bookcode" HeaderText="ISBN" />
            <asp:BoundField DataField="bookname" HeaderText="图书名称" />
            <asp:BoundField DataField="typeid" HeaderText="图书类型ID" />
            <asp:BoundField DataField="author" HeaderText="作者" />
            <asp:BoundField DataField="translator" HeaderText="译者" />
            <asp:BoundField DataField="pubname" HeaderText="出版社" />
            <asp:BoundField DataField="price" HeaderText="价格" />
            <asp:BoundField DataField="page" HeaderText="页数" />
            <asp:BoundField DataField="bcase" HeaderText="书架" />
            <asp:BoundField DataField="storage" HeaderText="库存数量" />
            <asp:BoundField DataField="inTime" HeaderText="入库时间" />
            <asp:BoundField DataField="oper" HeaderText="操作员" />
            <asp:BoundField DataField="borrownum" HeaderText="借阅次数" />
        </Columns>
    </asp:GridView>
    <br /> <div></div>
        <div><img alt="" class="style3" src="Images/广告.JPG" /></div>
    </div>
    </form>
</body>
</html>
