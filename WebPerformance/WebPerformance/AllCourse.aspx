<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AllCourse.aspx.cs" Inherits="AllCourse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div id="header" style="background-color: #4D8AB3;">
                <div style="text-align: left">
                    <asp:Button ID="btnAdmin" runat="server" Text="登录" OnClick="btnLogin_Click" />
                </div>
                <%--<div style="float:right">
               <asp:Label ID="lblKey" runat="server" Text="关键字"  style="text-align:left"></asp:Label>
                <asp:TextBox ID="txtSearch" runat="server" ></asp:TextBox>
                <asp:Label ID="lblquery" runat="server" Text="查询"></asp:Label>
            </div>   --%>
            </div>
            <div style="background-color: #0997F7; text-align: center; line-height: normal;">

                <asp:ImageButton ID="Image2" runat="server" Height="80px" ImageAlign="Left" ImageUrl="~/images/logo.jpg" Width="80px" OnCommand="Image2_Command" />

                <asp:Label ID="lblTitle" runat="server" Text="学生成绩管理系统" Font-Bold="True" Font-Italic="False" Font-Size="XX-Large" Font-Strikeout="False" Height="80px"></asp:Label>

            </div>
            <asp:Label ID="Label1" runat="server" Text="全部课程：" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
            <asp:DataList ID="DataList1" runat="server" DataKeyField="id" DataSourceID="SqlDataSource1" CellPadding="90" CellSpacing="30" RepeatColumns="4" OnItemCommand="DataList1_ItemCommand">
                <ItemTemplate>

                    <asp:ImageButton ID="Image3" runat="server" Height="200px" ImageUrl='<%# Eval("photo") %>' Width="160px" CommandName='<%# Eval("photo") %>' />
                    <br />
                    <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                    <br />
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:performanceConnectionString %>" SelectCommand="SELECT * FROM [course]"></asp:SqlDataSource>
            <br />

        </div>

    </form>
    <div class="footer" style="background-color: #4D8AB3; text-align: center; bottom: 0px; width: 100%">
        <asp:Label ID="lblfooter" runat="server" Text="版权@湖北大学" Height="41px" Width="100%"></asp:Label>
    </div>
</body>
</html>
