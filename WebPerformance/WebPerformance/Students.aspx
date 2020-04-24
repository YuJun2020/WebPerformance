<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Students.aspx.cs" Inherits="Students" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
   
</head>
<body>
    <form id="form1" runat="server">
        <div id="header" style="background-color:#4D8AB3;">
            <div style="text-align:left">
                <asp:Button ID="btnAdmin" runat="server" Text="登录" OnClick="btnLogin_Click" BorderStyle="None"  />
            </div> 
           <%--<div style="float:right">
               <asp:Label ID="lblKey" runat="server" Text="关键字"  style="text-align:left"></asp:Label>
                <asp:TextBox ID="txtSearch" runat="server" ></asp:TextBox>
                <asp:Label ID="lblquery" runat="server" Text="查询"></asp:Label>
            </div>   --%>     
        </div>
        <div style="background-color:#0997F7;text-align:center; line-height: normal;">

            <asp:Imagebutton ID="Image2" runat="server" Height="80px" ImageAlign="Left" ImageUrl="~/images/logo.jpg" Width="80px" OnCommand="Image2_Command" />

            <asp:Label ID="lblTitle" runat="server" Text="学生成绩管理系统" Font-Bold="True" Font-Italic="False" Font-Size="XX-Large" Font-Strikeout="False" Height="80px"></asp:Label>

        </div>
        <div>

            <asp:Image ID="Image1" runat="server" Height="250px" ImageUrl="~/images/夜空下的湖大.png" Width="100%" />

            <br />
            <asp:Label ID="lblCourse" runat="server" Text="最新课程：" Font-Bold="True" Font-Size="Large"></asp:Label>
            <div style="float:right">
            <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Size="Large" NavigateUrl="~/AllCourse.aspx">更多课程&gt;&gt;</asp:HyperLink>
            </div>
        </div>
        <div>

            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand"  >
                <ItemStyle HorizontalAlign="Center" />
                <ItemTemplate>
                    <asp:Imagebutton ID="Image3" runat="server" ImageUrl='<%# Eval("photo") %>' Height="200"  CommandName='<%# Eval("photo") %>' />
                    <br />
                    <asp:Label ID="lblName" runat="server" Text='<%# Eval("name") %>' />
                    <br />
                    <br />
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:performanceConnectionString %>" SelectCommand="SELECT TOP 8 [name], [photo] FROM [course]"></asp:SqlDataSource>

        </div>   

    </form>
</body>
</html>
