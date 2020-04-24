<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddCourse.aspx.cs" Inherits="AddCourse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <div id="header" style="background-color:#4D8AB3;">
                <asp:Button ID="btnAdmin" runat="server" Text="管理员" /> 
            </div>
        <div style="background-color:#0997F7;text-align:center; line-height: normal;">

            <asp:Imagebutton ID="Image2" runat="server" Height="80px" ImageAlign="Left" ImageUrl="~/images/logo.jpg" Width="80px"   />

            <asp:Label ID="lblTitle" runat="server" Text="学生成绩管理系统" Font-Bold="True" Font-Italic="False" Font-Size="XX-Large" Font-Strikeout="False" Height="80px"></asp:Label>

        </div>
            <asp:Label ID="lblId" runat="server" Text="账号:" Width="64px"></asp:Label>
            <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lblName" runat="server" Text="图书名："></asp:Label>
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lblCredit" runat="server" Text="学分：" Width="64px"></asp:Label>
            <asp:TextBox ID="txtCredit" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lblProperty" runat="server" Text="简介：" Width="64px"></asp:Label>
            <asp:TextBox ID="txtProperty" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lblCover" runat="server" Text="封面：" Width="64px"></asp:Label>
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <br />
            <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="提交" />
            <br>
        </div>
    </form>
</body>
</html>
