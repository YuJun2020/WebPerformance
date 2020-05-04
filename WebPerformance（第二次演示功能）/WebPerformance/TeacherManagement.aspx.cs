using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TeacherManagement : System.Web.UI.Page
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

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            if (e.Row.RowState == DataControlRowState.Normal || e.Row.RowState ==
                DataControlRowState.Alternate)
            {
                ((LinkButton)e.Row.Cells[0].Controls[0]).Attributes.Add("onclick",
                    "javascript:return confirm('你确定要删除：\"" +
                    e.Row.Cells[2].Text + "\"这位老师的信息吗？')");
            }
        }
    }

    protected void btnQuery_Click(object sender, EventArgs e)
    {
        gvTeacher.DataSourceID = dsTheTeacher.ID;
        gvTeacher.DataBind();
        if (txtName.Text == "")
        {
            gvTeacher.DataSourceID = dsTeacher.ID;
            gvTeacher.DataBind();
        }
    }



    protected void btnAdd_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddTeacher.aspx");
    }
}