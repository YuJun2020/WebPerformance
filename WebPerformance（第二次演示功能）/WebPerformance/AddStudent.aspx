<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddStudent.aspx.cs" Inherits="AddStudent" %>

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
                <asp:Button ID="btnAdmin" runat="server" Text="管理员" />
            </div>
            <div style="background-color: #0997F7; text-align: center; line-height: normal;">

                <asp:ImageButton ID="Image2" runat="server" Height="80px" ImageAlign="Left" ImageUrl="~/images/logo.jpg" Width="80px" OnClick="Image2_Click" />

                <asp:Label ID="lblTitle" runat="server" Text="学生成绩管理系统" Font-Bold="True" Font-Italic="False" Font-Size="XX-Large" Font-Strikeout="False" Height="80px"></asp:Label>

            </div>
            <div style="text-align: center">
                <asp:Label ID="lblReminder" runat="server" Text="添加学生" Font-Bold="True" Font-Italic="False" Font-Size="XX-Large" Height="53px" Width="955px"></asp:Label>

            </div>
            <div style="text-align: center">
                <asp:Label ID="Label1" runat="server" Text="学号：" Height="40px"></asp:Label>
                <asp:TextBox ID="txtId" runat="server" Height="40px" Width="268px"></asp:TextBox>
                <br />
                <asp:Label ID="Label2" runat="server" Text="姓名：" Height="40px"></asp:Label>
                <asp:TextBox ID="txtName" runat="server" Height="40px" Width="268px"></asp:TextBox>
                <br />
                <asp:Label ID="Label3" runat="server" Text="密码：" Height="40px"></asp:Label>
                <asp:TextBox ID="txtPassword" runat="server" Height="40px" Width="268px"></asp:TextBox>
                <br />
                <asp:Label ID="Label4" runat="server" Text="专业：" Height="40px"></asp:Label>
                <asp:DropDownList ID="ddlMajor" runat="server" DataSourceID="dsMajor" DataTextField="name" DataValueField="name" Height="40px" Width="268px">
                </asp:DropDownList>
                </br>
            <asp:SqlDataSource ID="dsMajor" runat="server" ConnectionString="<%$ ConnectionStrings:performanceConnectionString %>" SelectCommand="SELECT [id], [name] FROM [major]"></asp:SqlDataSource>
                <asp:Label ID="Label5" runat="server" Text="班级：" Height="40px"></asp:Label>
                <asp:DropDownList ID="ddlClass" runat="server" DataSourceID="dsClass" DataTextField="name" DataValueField="name" Height="40px" Width="268px">
                </asp:DropDownList>
                </br>
            <asp:SqlDataSource ID="dsClass" runat="server" ConnectionString="<%$ ConnectionStrings:performanceConnectionString %>" SelectCommand="SELECT [name] FROM [class]"></asp:SqlDataSource>
                <asp:Label ID="Label6" runat="server" Text="学院：" Height="40px"></asp:Label>
                <asp:DropDownList ID="ddlCollege" runat="server" DataSourceID="dsCollege" DataTextField="name" DataValueField="name" Height="40px" Width="268px">
                </asp:DropDownList>
                </br>
            <asp:SqlDataSource ID="dsCollege" runat="server" ConnectionString="<%$ ConnectionStrings:performanceConnectionString %>" SelectCommand="SELECT [name] FROM [college]"></asp:SqlDataSource>
                <asp:Button ID="btnCommit" runat="server" Text="提交" OnClick="btnCommit_Click" BackColor="#99CC00" Font-Size="Large" ForeColor="White" Height="49px" Width="332px" />

                </br>
            </div>
        </div>
    </form>
    <div class="footer" style="background-color: #4D8AB3; text-align: center; clear: both; position: absolute; bottom: 0px; width: 100%">
        <asp:Label ID="lblfooter" runat="server" Text="版权@湖北大学" Height="41px" Width="100%"></asp:Label>
    </div>
</body>
</html>
