<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TeacherManagement.aspx.cs" Inherits="TeacherManagement" %>

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
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <asp:Button ID="btnQuery" runat="server" Text="查询" OnClick="btnQuery_Click" />
            <br />
            <asp:SqlDataSource ID="dsTheTeacher" runat="server" ConnectionString="<%$ ConnectionStrings:performanceConnectionString %>" SelectCommand="SELECT [id], [name], [password], [college_name] FROM [teacher] WHERE ([name] = @name)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="txtName" Name="name" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <asp:Button ID="btnAdd" runat="server" Text="添加" OnClick="btnAdd_Click" />
            <asp:GridView ID="gvTeacher" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="dsTeacher" OnRowDataBound="GridView1_RowDataBound" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:BoundField DataField="id" HeaderText="学工号" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="name" HeaderText="姓名" SortExpression="name" />
                    <asp:BoundField DataField="password" HeaderText="密码" SortExpression="password" />
                    <asp:BoundField DataField="college_name" HeaderText="学院" SortExpression="college_name" />
                    <asp:CommandField ShowEditButton="True" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:SqlDataSource ID="dsTeacher" runat="server" ConnectionString="<%$ ConnectionStrings:performanceConnectionString %>" DeleteCommand="DELETE FROM [teacher] WHERE [id] = @id" InsertCommand="INSERT INTO [teacher] ([id], [name], [password], [college_name]) VALUES (@id, @name, @password, @college_name)" SelectCommand="SELECT [id], [name], [password], [college_name] FROM [teacher]" UpdateCommand="UPDATE [teacher] SET [name] = @name, [password] = @password, [college_name] = @college_name WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="password" Type="String" />
                    <asp:Parameter Name="college_name" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="password" Type="String" />
                    <asp:Parameter Name="college_name" Type="String" />
                    <asp:Parameter Name="id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
        </div>
    </form>
    <div class="footer" style="background-color: #4D8AB3; text-align: center; clear: both; position: absolute; bottom: 0px; width: 100%">
        <asp:Label ID="lblfooter" runat="server" Text="版权@湖北大学" Height="41px" Width="100%"></asp:Label>
    </div>
</body>
</html>
