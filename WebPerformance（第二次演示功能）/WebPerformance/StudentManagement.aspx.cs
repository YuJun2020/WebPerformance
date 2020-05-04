using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StudentManagement : System.Web.UI.Page
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

    protected void gvStudent_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            if (e.Row.RowState == DataControlRowState.Normal || e.Row.RowState ==
                DataControlRowState.Alternate)
            {
                ((LinkButton)e.Row.Cells[0].Controls[0]).Attributes.Add("onclick",
                    "javascript:return confirm('你确定要删除：\"" +
                    e.Row.Cells[2].Text + "\"这位学生的信息吗？')");
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddStudent.aspx");
    }

    protected void btnQuery_Click(object sender, EventArgs e)
    {
        gvStudent.DataSourceID = dsTheStu.ID;
        gvStudent.DataBind();

        if (txtName.Text == "")
        {
            gvStudent.DataSourceID = dsStudent.ID;
            gvStudent.DataBind();
        }
    }
}