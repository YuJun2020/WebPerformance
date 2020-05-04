using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminPageControl : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            btnAdmin.Text = "欢迎你，" + (String)Session["name"];

        }
        if (Session["name"] == null || Session["name"] == "")
        {
            Response.Redirect("Login.aspx");
        }
    }

    protected void Image2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("HomePage.aspx");
    }



    protected void btnEnter_Click(object sender, EventArgs e)
    {
        if (rblIdentity.SelectedItem.Text == "课程管理")
        {
            Response.Redirect("Admin.aspx");
        }
        if (rblIdentity.SelectedItem.Text == "学生管理")
        {
            Response.Redirect("StudentManagement.aspx");
        }
        if (rblIdentity.SelectedItem.Text == "教师管理")
        {
            Response.Redirect("TeacherManagement.aspx");
        }
        if (rblIdentity.SelectedItem.Text == "系统管理")
        {
            Response.Redirect("SystemManagement.aspx");
        }
    }
}