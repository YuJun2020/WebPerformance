<%@ Page Language="C#" AutoEventWireup="true" CodeFile="InfoSecurity.aspx.cs" Inherits="InfoSecurity" %>

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
                <asp:Label ID="lblReminder" runat="server" Text="密码修改" Font-Bold="True" Font-Italic="False" Font-Size="XX-Large" Height="53px" Width="955px"></asp:Label>

            </div>
            <div style="text-align: center">
                <asp:Label ID="lblId" runat="server" Text="新密码：" Height="40px" Width="80px"></asp:Label>
                <asp:TextBox ID="txtPwd" runat="server" Height="40px" Width="268px"></asp:TextBox>
                <br />
                <asp:Label ID="lblPassword" runat="server" Text="确认密码：" Height="40px"></asp:Label>
                <asp:TextBox ID="txtRePwd" runat="server" Height="40px" Width="268px"></asp:TextBox>
                <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPwd" ControlToValidate="txtRePwd" ErrorMessage="两次输入的密码不一致" ForeColor="Red"></asp:CompareValidator>
                <br />
                <br />

                <asp:Button ID="btnChange" runat="server" Text="修改" BackColor="#99CC00" Font-Size="Large" ForeColor="White" Height="49px" Width="352px" OnClick="btnChange_Click" />
                <br />
                <asp:Button ID="btnLogin" runat="server" Text="重新登录" BackColor="#99CC00" Font-Size="Large" ForeColor="White" Height="49px" Width="352px" OnClick="btnLogin_Click" />
                <br />
                <asp:Label ID="lblInfo" runat="server" ForeColor="Red"></asp:Label>
                <br />
                <br />
            </div>
        </div>
    </form>
    <div class="footer" style="background-color: #4D8AB3; text-align: center; clear: both; position: absolute; bottom: 0px; width: 100%">
        <asp:Label ID="lblfooter" runat="server" Text="版权@湖北大学" Height="41px" Width="100%"></asp:Label>
    </div>
</body>
</html>
