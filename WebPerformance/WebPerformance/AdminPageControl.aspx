<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminPageControl.aspx.cs" Inherits="AdminPageControl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                <div id="header" style="background-color: #4D8AB3;">
                    <asp:Button ID="btnAdmin" runat="server" Text="管理员" />
                </div>
                <div style="background-color: #0997F7; text-align: center; line-height: normal;">

                    <asp:ImageButton ID="Image2" runat="server" Height="80px" ImageAlign="Left" ImageUrl="~/images/logo.jpg" Width="80px" OnClick="Image2_Click" />

                    <asp:Label ID="lblTitle" runat="server" Text="学生成绩管理系统" Font-Bold="True" Font-Italic="False" Font-Size="XX-Large" Font-Strikeout="False" Height="80px"></asp:Label>

                </div>
                <div style="text-align: center">
                    </br>
                </br>
            <asp:RadioButtonList ID="rblIdentity" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                <asp:ListItem>学生管理</asp:ListItem>
                <asp:ListItem>教师管理</asp:ListItem>
                <asp:ListItem>课程管理</asp:ListItem>
                <asp:ListItem>系统管理</asp:ListItem>
            </asp:RadioButtonList>
                    <br />
                    </br>
            <asp:Button ID="btnEnter" runat="server" Text="进入" BackColor="#99CC00" Font-Size="Large" ForeColor="White" Height="49px" Width="332px" OnClick="btnEnter_Click" />

                    <br />
                </div>
            </div>
    </form>
    <div class="footer" style="background-color: #4D8AB3; text-align: center; clear: both; position: absolute; bottom: 0px; width: 100%">
        <asp:Label ID="lblfooter" runat="server" Text="版权@湖北大学" Height="41px" Width="100%"></asp:Label>
    </div>
</body>
</html>
