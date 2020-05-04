<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddCourse.aspx.cs" Inherits="AddCourse" %>

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

                <asp:ImageButton ID="Image2" runat="server" Height="80px" ImageAlign="Left" ImageUrl="~/images/logo.jpg" Width="80px" />

                <asp:Label ID="lblTitle" runat="server" Text="学生成绩管理系统" Font-Bold="True" Font-Italic="False" Font-Size="XX-Large" Font-Strikeout="False" Height="80px"></asp:Label>

            </div>
            <div style="text-align: center">
                <asp:Label ID="lblReminder" runat="server" Text="添加图书" Font-Bold="True" Font-Italic="False" Font-Size="XX-Large" Height="53px" Width="955px"></asp:Label>

            </div>
            <div style="text-align: center">
                <asp:Label ID="lblId" runat="server" Text="账号：" Height="40px"></asp:Label>
                <asp:TextBox ID="txtId" runat="server" Height="40px" Width="268px"></asp:TextBox>
                <br />
                <asp:Label ID="lblName" runat="server" Text="书名：" Height="40px"></asp:Label>
                <asp:TextBox ID="txtName" runat="server" Height="40px" Width="268px"></asp:TextBox>
                <br />
                <asp:Label ID="lblCredit" runat="server" Text="学分：" Height="40px"></asp:Label>
                <asp:TextBox ID="txtCredit" runat="server" Height="40px" Width="268px"></asp:TextBox>
                <br />
                <asp:Label ID="lblCollege" runat="server" Text="学院：" Height="40px"></asp:Label>
                <asp:DropDownList ID="ddlCollege" runat="server" DataSourceID="dsCollege" DataTextField="name" DataValueField="name" Height="30px" Width="250px">
                </asp:DropDownList>
                <br />
                <asp:SqlDataSource ID="dsCollege" runat="server" ConnectionString="<%$ ConnectionStrings:performanceConnectionString %>" SelectCommand="SELECT [name] FROM [college]"></asp:SqlDataSource>
                <asp:Label ID="lblTeacher" runat="server" Text="教师：" Height="40px"></asp:Label>
                <asp:TextBox ID="txtTeacher" runat="server" Height="40px" Width="268px"></asp:TextBox>
                <br />
                <asp:Label ID="lblProperty" runat="server" Text="简介：" Height="40px"></asp:Label>
                <asp:TextBox ID="txtProperty" runat="server" Height="40px" Width="268px"></asp:TextBox>
                <br />
                <asp:Label ID="lblCover" runat="server" Text="封面：" Height="40px"></asp:Label>
                <asp:FileUpload ID="FileUpload1" runat="server" Height="40px" Width="268px" />
                <br />
                <asp:Button ID="btnSubmit" runat="server" BackColor="#99CC00" Font-Size="Large" ForeColor="White" Height="49px" Width="332px" OnClick="btnSubmit_Click" Text="提交" />

                <br>
            </div>

        </div>

    </form>
    <div class="footer" style="background-color: #4D8AB3; text-align: center; clear: both; position: absolute; bottom: 0px; width: 100%">
        <asp:Label ID="lblfooter" runat="server" Text="版权@湖北大学" Height="41px" Width="100%"></asp:Label>
    </div>
</body>
</html>
