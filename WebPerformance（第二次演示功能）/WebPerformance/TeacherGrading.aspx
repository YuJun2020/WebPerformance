<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TeacherGrading.aspx.cs" Inherits="TeacherGrading" %>

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
                    <asp:Button ID="btnTeacher" runat="server" Text="教师" />
                    <asp:Button ID="btnChange" runat="server" OnClick="btnChange_Click" Text="修改密码" />
                </div>
                <div style="background-color: #0997F7; text-align: center; line-height: normal;">
                    <asp:ImageButton ID="imgLogo" runat="server" Height="80px" ImageAlign="Left" ImageUrl="~/images/logo.jpg" Width="80px" OnClick="imgLogo_Click" />
                    <asp:Label ID="lblTitle" runat="server" Text="学生成绩管理系统" Font-Bold="True" Font-Italic="False" Font-Size="XX-Large" Font-Strikeout="False" Height="80px"></asp:Label>
                </div>
            </div>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>

            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:GridView ID="gvGrade" runat="server" AutoGenerateColumns="False" DataSourceID="dsScore" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="id" HeaderText="学号" />
                            <asp:BoundField DataField="name" HeaderText="姓名" />
                            <asp:BoundField DataField="course_id" HeaderText="课程号" />
                            <asp:BoundField DataField="course_name" HeaderText="课程名" />
                            <asp:BoundField DataField="credit" HeaderText="学分" />
                            <asp:BoundField DataField="teacher_name" HeaderText="教师名" SortExpression="teacher_name" />
                            <asp:TemplateField HeaderText="平时成绩">
                                <ItemTemplate>
                                    <asp:TextBox ID="txtNormalScore" runat="server" AutoPostBack="True" OnTextChanged="txtNormalScore_TextChanged"></asp:TextBox>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="考试成绩">
                                <ItemTemplate>
                                    <asp:TextBox ID="txtTestScore" runat="server" AutoPostBack="True" OnTextChanged="txtTestScore_TextChanged"></asp:TextBox>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="最终成绩">
                                <ItemTemplate>
                                    <asp:Label ID="lblFinalScore" runat="server"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
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

                </ContentTemplate>
            </asp:UpdatePanel>
            <div style="margin-left: 432px">
                <asp:Button ID="btnTs" runat="server" Text="暂存" BackColor="#0099FF" Font-Bold="True" Font-Size="Larger" ForeColor="White" Width="100px" OnClick="btnTs_Click" />
                <asp:Button ID="btnCommit" runat="server" Text="提交" BackColor="#0099FF" Font-Bold="True" Font-Size="Larger" ForeColor="White" Width="100px" OnClick="btnCommit_Click" />
                <br />
                <asp:Label ID="lblinfo" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
            </div>
            <asp:SqlDataSource ID="dsScore" runat="server" ConnectionString="<%$ ConnectionStrings:performanceConnectionString %>" SelectCommand="SELECT [id], [name], [course_id], [course_name], [credit], [normal_score], [test_score], [teacher_name], [final_score] FROM [score] WHERE ([teacher_name] = @teacher_name)">
                <SelectParameters>
                    <asp:SessionParameter Name="teacher_name" SessionField="name" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>

        </div>
    </form>
    <div class="footer" style="background-color: #4D8AB3; text-align: center; clear: both; position: absolute; bottom: 0px; width: 100%">
        <asp:Label ID="lblfooter" runat="server" Text="版权@湖北大学" Height="41px" Width="100%"></asp:Label>
    </div>
</body>
</html>
