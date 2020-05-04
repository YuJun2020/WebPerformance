<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SystemManagement.aspx.cs" Inherits="SystemManagement" %>

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

            <asp:Label ID="lblSwitch" runat="server" Text="系统开关："></asp:Label>
            <asp:RadioButtonList ID="rblSwitch" runat="server" Font-Bold="True" RepeatDirection="Horizontal">
                <asp:ListItem Selected="True">开</asp:ListItem>
                <asp:ListItem>关</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <asp:Button ID="btnCommit" runat="server" OnClick="btnCommit_Click" Text="确认" />
            <br />
            <asp:Label ID="lblInfo" runat="server" ForeColor="Red"></asp:Label>
        </div>
    </form>
    <div class="footer" style="background-color: #4D8AB3; text-align: center; clear: both; position: absolute; bottom: 0px; width: 100%">
        <asp:Label ID="lblfooter" runat="server" Text="版权@湖北大学" Height="41px" Width="100%"></asp:Label>
    </div>
</body>
</html>
