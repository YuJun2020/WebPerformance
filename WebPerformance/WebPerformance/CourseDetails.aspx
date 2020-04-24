<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CourseDetails.aspx.cs" Inherits="CourseDetails" %>
<%@PreviousPageType VirtualPath="~/AllCourse.aspx" %>
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
            <div >
                <asp:Button ID="btnAdmin" runat="server" Text="登录" OnClick="btnLogin_Click" />
            </div> 
                <%--<div style="float:right">
               <asp:Label ID="lblKey" runat="server" Text="关键字"  style="text-align:left"></asp:Label>
                <asp:TextBox ID="txtSearch" runat="server" ></asp:TextBox>
                <asp:Label ID="lblquery" runat="server" Text="查询"></asp:Label>
            </div>  --%>      
        </div>
        <div style="background-color:#0997F7;text-align:center; line-height: normal;">

            <asp:Imagebutton ID="Image2" runat="server" Height="80px" ImageAlign="Left" ImageUrl="~/images/logo.jpg" Width="80px" OnCommand="Image2_Command" />

            <asp:Label ID="lblTitle" runat="server" Text="学生成绩管理系统" Font-Bold="True" Font-Italic="False" Font-Size="XX-Large" Font-Strikeout="False" Height="80px"></asp:Label>

        </div>  
           <asp:DataList ID="DataList1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyField="id" DataSourceID="SqlDataSource1" GridLines="Both" Height="100%" Width="100%">
               <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
               <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
               <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
               <ItemTemplate>
                   <div style="text-align:center">
                        <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' Font-Bold="True" Font-Size="X-Large" />
                        <br />
                        学分：<asp:Label ID="credit" runat="server" Font-Size="Larger" Text='<%# Eval("credit") %>'></asp:Label>
                   </div>
                   <br />
                   <div style="text-align:right">
                        <asp:Image ID="Image3" runat="server" ImageUrl='<%# Eval("photo") %>' Width="200px" Height="200px" />
                   </div>
                   <br />
                   <asp:Label ID="introductionLabel" runat="server" Text='<%# Eval("property") %>' />
                   <br />
<br />
               </ItemTemplate>
               <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:performanceConnectionString %>" SelectCommand="SELECT * FROM [course] WHERE ([photo] = @photo)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="photo" QueryStringField="photo1" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
        
        
       
        
        
    </form>
</body>
</html>
