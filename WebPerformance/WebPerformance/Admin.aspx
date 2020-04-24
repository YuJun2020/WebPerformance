<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

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

            <asp:Imagebutton ID="Image2" runat="server" Height="80px" ImageAlign="Left" ImageUrl="~/images/logo.jpg" Width="80px" OnCommand="Image2_Command" />

            <asp:Label ID="lblTitle" runat="server" Text="学生成绩管理系统" Font-Bold="True" Font-Italic="False" Font-Size="XX-Large" Font-Strikeout="False" Height="80px"></asp:Label>

        </div>
            <br />
            <asp:TextBox ID="txtNote" runat="server"></asp:TextBox>
            <asp:Button ID="btnQuery" runat="server" style="margin-bottom: 0px" Text="查询" OnClick="btnQuery_Click" />
            <br />
            <asp:SqlDataSource ID="dsSpecific" runat="server" ConnectionString="<%$ ConnectionStrings:performanceConnectionString %>" SelectCommand="SELECT [id], [name], [credit] FROM [course] WHERE ([name] = @name)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="txtNote" Name="name" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:Button ID="btnAddCourse" runat="server" Text="添加课程" OnClick="btnAddCourse_Click" />
            <asp:GridView ID="gvCourse" runat="server" AutoGenerateColumns="False" DataKeyNames="id" AllowPaging="True" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None"  OnRowDataBound="gvCourse_RowDataBound" PageSize="7" OnPageIndexChanging="gvCourse_PageIndexChanging" OnRowCancelingEdit="gvCourse_RowCancelingEdit"  OnRowEditing="gvCourse_RowEditing" OnRowUpdating="gvCourse_RowUpdating" OnRowDeleting="gvCourse_RowDeleting"    >
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="credit" HeaderText="credit" SortExpression="credit" />
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
            <asp:SqlDataSource ID="dsCourse" runat="server" ConnectionString="<%$ ConnectionStrings:performanceConnectionString %>" SelectCommand="SELECT [id], [name], [credit] FROM [course]" DeleteCommand="DELETE FROM [course] WHERE [id] = @original_id" InsertCommand="INSERT INTO [course] ([id], [name], [credit]) VALUES (@id, @name, @credit)" UpdateCommand="UPDATE [course] SET [name] = @name, [credit] = @credit WHERE [id] = @original_id" OldValuesParameterFormatString="original_{0}">
                <DeleteParameters>
                    <asp:Parameter Name="original_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="credit" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="credit" Type="Int32" />
                    <asp:Parameter Name="original_id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
        </div>
    </form>
</body>
</html>
