using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SystemManagement : System.Web.UI.Page
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

    protected void btnCommit_Click(object sender, EventArgs e)
    {
        if (rblSwitch.SelectedItem.Text == "关")
        {
            Session["switch"] = "关";
            lblInfo.Text = "学生、教师登录功能已关闭！";
        }
        if (rblSwitch.SelectedItem.Text == "开")
        {
            Session["switch"] = "开";
            lblInfo.Text = "学生、教师登录功能已开启！";
        }
    }
}