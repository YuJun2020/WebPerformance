<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CourseChoosing.aspx.cs" Inherits="CourseChoosing" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="gvCourseChoosing">
            <div>
                <div id="header" style="background-color: #4D8AB3;">
                    <asp:Button ID="btnStudent" runat="server" Text="学生" />

                    <asp:Button ID="btnChange" runat="server" Text="修改密码" OnClick="btnChange_Click" />

                </div>
                <div style="background-color: #0997F7; text-align: center; line-height: normal;">
                    <asp:ImageButton ID="Image2" runat="server" Height="80px" ImageAlign="Left" ImageUrl="~/images/logo.jpg" Width="80px" OnClick="Image2_Click" />
                    <asp:Label ID="lblTitle" runat="server" Text="学生成绩管理系统" Font-Bold="True" Font-Italic="False" Font-Size="XX-Large" Font-Strikeout="False" Height="80px"></asp:Label>
                </div>
            </div>
            当前位置：<asp:Label ID="lblReminder" runat="server" Text="学生选课" Font-Bold="True"></asp:Label>
            <br />
            提示：<br />
            开课单位：<asp:DropDownList ID="ddlCollege" runat="server" DataSourceID="SqlDataSource2" DataTextField="name" DataValueField="name">
            </asp:DropDownList>
            <asp:Button ID="btnQuery" runat="server" Text="查询" OnClick="btnQuery_Click" />
            <br />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:performanceConnectionString %>" SelectCommand="SELECT [name] FROM [college]"></asp:SqlDataSource>
            <asp:Label ID="lblAllCourse" runat="server" Font-Bold="True" Text="所有课程："></asp:Label>
            <br />
            <asp:GridView ID="gvCoursechoosing" runat="server" AutoGenerateColumns="False" DataKeyNames="id" OnRowDataBound="gvCoursechoosing_RowDataBound" OnSelectedIndexChanging="gvCoursechoosing_SelectedIndexChanging1" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField SelectText="选课" ShowSelectButton="True" />
                    <asp:BoundField DataField="id" HeaderText="课程号" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="name" HeaderText="课程名" SortExpression="name" />
                    <asp:BoundField DataField="credit" HeaderText="学分" SortExpression="credit" />
                    <asp:BoundField DataField="college" HeaderText="学院" SortExpression="college" />
                    <asp:BoundField DataField="teacher_name" HeaderText="任课教师" />
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
            <asp:Label ID="lblCourseChoosing" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="Red"></asp:Label>
            <br />
            <asp:Label ID="lblSelectedCourse" runat="server" Font-Bold="True" Text="已选课程："></asp:Label>
            <br />
            <asp:GridView ID="gvSelectedCourse" runat="server" AutoGenerateColumns="False" DataKeyNames="id" OnRowDataBound="gvSelectedCourse_RowDataBound" OnRowDeleting="gvSelectedCourse_RowDeleting" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:BoundField DataField="id" HeaderText="学号" SortExpression="id" />
                    <asp:BoundField DataField="name" HeaderText="姓名" />
                    <asp:BoundField DataField="course_id" HeaderText="课程号" />
                    <asp:BoundField DataField="course_name" HeaderText="课程名" />
                    <asp:BoundField DataField="credit" HeaderText="学分" />
                    <asp:BoundField DataField="teacher_name" HeaderText="任课教师" />
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
        </div>
    </form>
    <div class="footer" style="background-color: #4D8AB3; text-align: center; bottom: 0px; width: 100%">
        <asp:Label ID="lblfooter" runat="server" Text="版权@湖北大学" Height="41px" Width="100%"></asp:Label>
    </div>

</body>
</html>
