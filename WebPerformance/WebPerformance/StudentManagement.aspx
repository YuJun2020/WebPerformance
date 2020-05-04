<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StudentManagement.aspx.cs" Inherits="StudentManagement" %>

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
            <asp:Button ID="btnQuery" runat="server" OnClick="btnQuery_Click" Text="查询" />
            <br />
            <asp:SqlDataSource ID="dsTheStu" runat="server" ConnectionString="<%$ ConnectionStrings:performanceConnectionString %>" SelectCommand="SELECT [id], [name], [password], [major_name], [class_name], [college_name] FROM [student] WHERE ([name] = @name)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="txtName" Name="name" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <asp:Button ID="Button1" runat="server" Text="添加学生" OnClick="Button1_Click" />
            </br>
                <asp:GridView ID="gvStudent" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="dsStudent" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowDataBound="gvStudent_RowDataBound">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" />
                        <asp:BoundField DataField="id" HeaderText="学号" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="name" HeaderText="姓名" SortExpression="name" />
                        <asp:BoundField DataField="password" HeaderText="密码" SortExpression="password" />
                        <asp:BoundField DataField="major_name" HeaderText="专业" SortExpression="major_name" />
                        <asp:BoundField DataField="class_name" HeaderText="班级" SortExpression="class_name" />
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

            <asp:SqlDataSource ID="dsStudent" runat="server" ConnectionString="<%$ ConnectionStrings:performanceConnectionString %>" SelectCommand="SELECT [id], [name], [password], [major_name], [class_name], [college_name] FROM [student]" DeleteCommand="DELETE FROM [student] WHERE [id] = @id" InsertCommand="INSERT INTO [student] ([id], [name], [password], [major_name], [class_name], [college_name]) VALUES (@id, @name, @password, @major_name, @class_name, @college_name)" UpdateCommand="UPDATE [student] SET [name] = @name, [password] = @password, [major_name] = @major_name, [class_name] = @class_name, [college_name] = @college_name WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="password" Type="String" />
                    <asp:Parameter Name="major_name" Type="String" />
                    <asp:Parameter Name="class_name" Type="String" />
                    <asp:Parameter Name="college_name" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="password" Type="String" />
                    <asp:Parameter Name="major_name" Type="String" />
                    <asp:Parameter Name="class_name" Type="String" />
                    <asp:Parameter Name="college_name" Type="String" />
                    <asp:Parameter Name="id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>

        </div>
    </form>
    <div class="footer" style="background-color: #4D8AB3; text-align: center; clear: both; position: absolute; bottom: 0px; width: 100%">
        <asp:Label ID="lblfooter" runat="server" Text="版权@湖北大学" Height="41px" Width="100%"></asp:Label>
    </div>
</body>
</html>
