<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align:center">
            <asp:Label ID="lblReminder" runat="server" Text="用户登录" Font-Bold="True" Font-Italic="False" Font-Size="XX-Large" Height="53px" Width="955px"></asp:Label>

        </div>
        <div style="text-align:center">
            <asp:Label ID="lblId" runat="server" Text="账号：" Height="40px"></asp:Label>
            <asp:TextBox ID="txtId" runat="server" Height="40px" Width="268px"></asp:TextBox>
            <br />
            <asp:Label ID="lblPassword" runat="server" Text="密码：" Height="40px"></asp:Label>
            <asp:TextBox ID="txtPassword" runat="server" Height="40px" Width="268px"></asp:TextBox>
            <br />
            <asp:RadioButtonList ID="rblIdentity" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                <asp:ListItem>学生</asp:ListItem>
                <asp:ListItem>教师</asp:ListItem>
                <asp:ListItem Selected="True">管理员</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <asp:Button ID="btnLogin" runat="server" Text="登录" BackColor="#99CC00" Font-Size="Large" ForeColor="White" Height="49px" OnClick="btnLogin_Click" Width="332px" />
            <br />
            <asp:Label ID="lblErrorMessage" runat="server" ForeColor="Red"></asp:Label>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
