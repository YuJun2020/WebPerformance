using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            btnAdmin.Text = "欢迎你，" + (String)Session["name"];
            gvCourse.DataSource = dsCourse;
            gvCourse.DataBind();
        }
        if (Session["name"] == null || Session["name"] == "")
        {
            Response.Redirect("Login.aspx");
        }


    }



    protected void Image2_Command(object sender, CommandEventArgs e)
    {
        Response.Redirect("HomePage.aspx");
    }





    protected void gvCourse_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            if (e.Row.RowState == DataControlRowState.Normal || e.Row.RowState ==
                DataControlRowState.Alternate)
            {
                ((LinkButton)e.Row.Cells[0].Controls[0]).Attributes.Add("onclick",
                    "javascript:return confirm('你确定要删除：\"" +
                    e.Row.Cells[2].Text + "\"这门课程吗？')");
            }
        }
    }

    protected void gvCourse_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvCourse.PageIndex = e.NewPageIndex;
        gvCourse.DataSource = dsCourse;
        gvCourse.DataBind();
    }

    protected void btnAddCourse_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddCourse.aspx");
    }


    protected void btnQuery_Click(object sender, EventArgs e)
    {
        gvCourse.DataSource = dsSpecific;
        gvCourse.DataBind();
    }



    protected void gvCourse_RowEditing(object sender, GridViewEditEventArgs e)
    {
        gvCourse.EditIndex = e.NewEditIndex;
        gvCourse.DataSource = dsCourse;
        gvCourse.DataBind();

    }

    protected void gvCourse_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int num = e.RowIndex;
        int id = Convert.ToInt32(gvCourse.Rows[num].Cells[1].Text);
        String name = ((TextBox)(gvCourse.Rows[num].Cells[2].Controls[0])).Text;
        int credit = Convert.ToInt32(((TextBox)(gvCourse.Rows[num].Cells[3].Controls[0])).Text);
        String cmd = Convert.ToString("Update course set name='" + name + "',credit='" + credit + "'where id='" + Convert.ToInt32(gvCourse.DataKeys[num].Value) + "'");
        String conn = ConfigurationManager.ConnectionStrings["performanceConnectionString"].ConnectionString;
        SqlConnection sqlConnection = new SqlConnection(conn);
        try
        {
            sqlConnection.Open();
            SqlCommand sqlCommand = new SqlCommand();
            sqlCommand.Connection = sqlConnection;
            sqlCommand.CommandText = cmd;
            sqlCommand.ExecuteNonQuery();
        }
        finally
        {
            sqlConnection.Close();
            gvCourse.EditIndex = -1;
            gvCourse.DataSource = dsCourse;
            gvCourse.DataBind();
        }

    }



    protected void gvCourse_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        gvCourse.EditIndex = -1;
        gvCourse.DataSource = dsCourse;
        gvCourse.DataBind();
    }

    protected void gvCourse_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        String cmd = "Delete from course where id =" + Convert.ToInt32(gvCourse.DataKeys[e.RowIndex].Value);
        String conn = ConfigurationManager.ConnectionStrings["performanceConnectionString"].ConnectionString;
        SqlConnection sqlConnection = new SqlConnection(conn);
        try
        {
            sqlConnection.Open();
            SqlCommand sqlCommand = new SqlCommand();
            sqlCommand.Connection = sqlConnection;
            sqlCommand.CommandText = cmd;
            sqlCommand.ExecuteNonQuery();
        }
        finally
        {
            sqlConnection.Close();
            gvCourse.DataSource = dsCourse;
            gvCourse.DataBind();
        }
    }
}