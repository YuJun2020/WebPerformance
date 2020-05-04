<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CourseDetails.aspx.cs" Inherits="CourseDetails" %>

<%@ PreviousPageType VirtualPath="~/AllCourse.aspx" %>
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
                <div>
                    <asp:Button ID="btnAdmin" runat="server" Text="登录" OnClick="btnLogin_Click" />
                </div>
                <%--<div style="float:right">
               <asp:Label ID="lblKey" runat="server" Text="关键字"  style="text-align:left"></asp:Label>
                <asp:TextBox ID="txtSearch" runat="server" ></asp:TextBox>
                <asp:Label ID="lblquery" runat="server" Text="查询"></asp:Label>
            </div>  --%>
            </div>
            <div style="background-color: #0997F7; text-align: center; line-height: normal;">

                <asp:ImageButton ID="Image2" runat="server" Height="80px" ImageAlign="Left" ImageUrl="~/images/logo.jpg" Width="80px" OnCommand="Image2_Command" />

                <asp:Label ID="lblTitle" runat="server" Text="学生成绩管理系统" Font-Bold="True" Font-Italic="False" Font-Size="XX-Large" Font-Strikeout="False" Height="80px"></asp:Label>

            </div>
            <asp:DetailsView ID="dvDetails" runat="server" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="SqlDataSource1" Height="50px" Width="100%" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                <EditRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <FooterTemplate>
                    <div style="text-align: center">
                        <asp:Label ID="lblName" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                        <br />
                        学分：<asp:Label ID="lblCreidt" runat="server" Text='<%# Eval("credit") %>'></asp:Label>
                        <br />
                    </div>
                    <div style="text-align: right">
                        <asp:Image ID="imgPhoto" runat="server" ImageUrl='<%# Eval("photo") %>' Width="200px" Height="200px" />
                        <br />
                    </div>
                    <asp:Label ID="lblProperty" runat="server" Text='<%# Eval("property") %>'></asp:Label>
                </FooterTemplate>
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:performanceConnectionString %>" SelectCommand="SELECT * FROM [course] WHERE ([photo] = @photo)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="photo" QueryStringField="photo1" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>





    </form>
    <div class="footer" style="background-color: #4D8AB3; text-align: center; clear: both; position: absolute; bottom: 0px; width: 100%">
        <asp:Label ID="lblfooter" runat="server" Text="版权@湖北大学" Height="41px" Width="100%"></asp:Label>
    </div>
</body>
</html>
