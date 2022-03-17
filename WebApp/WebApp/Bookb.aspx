<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bookb.aspx.cs" Inherits="Chapter8.webApp.Bookb" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>浙江杭州图书馆</title>
    <style type="text/css">
        .tt
           {
               width:665px;
               margin:0 auto;
               height  : 549px;
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
         .bb
         {
            float:left;
             margin-top:-30px;
             margin-left:400px;
             text-align:right;
             }
            
             .aa
        {
           background:#EEC591;
            float:left;
             margin-top:0px;
             margin-left:0px;
            }
    </style>
</head>
<body style="height: 557px">
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
    <a  href="http://localhost:1077/Bookb.aspx">图书馆介绍</a>
    </div>
    <div align ="center">    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="libraryname" HeaderText="图书馆名称" />
            <asp:BoundField DataField="curator" HeaderText="馆长姓名" />
            <asp:BoundField DataField="tel" HeaderText="电话" />
            <asp:BoundField DataField="address" HeaderText="地址" />
            <asp:BoundField DataField="email" HeaderText="电子邮箱" />
            <asp:BoundField DataField="url" HeaderText="官方网站" />
            <asp:BoundField DataField="createdate" HeaderText="建馆时间" />
            <asp:BoundField DataField="introduce" HeaderText="详细介绍" />
        </Columns>
    </asp:GridView>
    <div align ="center">    
        <asp:TextBox ID="lblDemo" runat="server" Rows="100"  align ="center" TextMode="MultiLine" 
            Height="190px" Width="648px" Text="浙江图书馆位于浙江省杭州市，是中国国内创办最早的省级公共图书之一，是首批'全国古籍重点保护单位'，是原中华人民共和国文化部评定的'一级图书馆'、是全国文化信息资源共享工程浙江省分中心、全国图书馆联合编目中心浙江省分中心、长三角公共图书馆讲座联盟。
        浙江图书馆创建于1900年，前身是杭州藏书楼，1909年浙江官书局并入，成立浙江图书馆；1951年接收藏书家刘承干捐赠的南浔嘉业堂藏书楼及藏书；1953年，确定使用“浙江图书馆”为馆名；2000年11月，浙江图书馆百年华诞之际，浙江图书馆新馆正式开馆。  
        截至2016年，浙江图书馆建筑总面积4.7万平方米，在全省各地设有24个分馆、29个流通站，馆藏文献共673.44万册（件），其中，古籍线装书82.2万册，含善本15万册；报刊合订本90.77万册；馆藏雕版15万件；馆藏电子图书174.82万册。 图书馆有阅览座位1359席，全馆员工282人。"></asp:TextBox>
  <br /> <div></div>
        <div><img alt="" class="style3" src="Images/广告.JPG" /></div>
    </div>
    </div>
    </form>
</body>
</html>
