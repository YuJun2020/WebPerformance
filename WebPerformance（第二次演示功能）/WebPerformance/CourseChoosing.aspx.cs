using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class CourseChoosing : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            btnStudent.Text = "欢迎你," + Session["name"];
        }
        if (Session["name"] == null || Session["name"] == "")
        {
            Response.Redirect("Login.aspx");
        }
        SelectedCourse();
        string sql = "select id,name,credit,college,teacher_name from course ";
        CourseChosing(sql);


    }
    void CourseChosing(string sql)
    {
        string conn = ConfigurationManager.ConnectionStrings["performanceConnectionString"].ConnectionString;

        SqlDataAdapter da = new SqlDataAdapter(sql, conn);
        DataSet ds = new DataSet();
        da.Fill(ds);
        gvCoursechoosing.DataSource = ds.Tables[0];
        gvCoursechoosing.DataBind();
    }
    void SelectedCourse()
    {
        string studentName = (string)Session["name"];
        string conn = ConfigurationManager.ConnectionStrings["performanceConnectionString"].ConnectionString;
        string sql = "select id,name,course_id,course_name,credit,teacher_name from score where name='" + studentName + "';";
        SqlDataAdapter da = new SqlDataAdapter(sql, conn);
        DataSet ds = new DataSet();
        da.Fill(ds);
        gvSelectedCourse.DataSource = ds.Tables[0];
        gvSelectedCourse.DataBind();
    }

    protected void Image2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("HomePage.aspx");
    }

    protected void gvSelectedCourse_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string sql = "Delete from score where id='" + Convert.ToInt32(gvSelectedCourse.Rows[e.RowIndex].Cells[1].Text) + "' and course_id='" + Convert.ToInt32(gvSelectedCourse.Rows[e.RowIndex].Cells[3].Text) + "'";
        string conn = ConfigurationManager.ConnectionStrings["performanceConnectionString"].ConnectionString;
        SqlConnection sqlConnection = new SqlConnection(conn);
        try
        {
            sqlConnection.Open();
            SqlCommand sqlCommand = new SqlCommand();
            sqlCommand.Connection = sqlConnection;
            sqlCommand.CommandText = sql;
            sqlCommand.ExecuteNonQuery();

        }
        finally
        {
            sqlConnection.Close();
            SelectedCourse();
        }
    }

    protected void gvSelectedCourse_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            if (e.Row.RowState == DataControlRowState.Normal || e.Row.RowState ==
                DataControlRowState.Alternate)
            {
                ((LinkButton)e.Row.Cells[0].Controls[0]).Attributes.Add("onclick",
                    "javascript:return confirm('你确定要删除：\"" +
                    e.Row.Cells[4].Text + "\"这门课程吗？')");
            }
        }
    }






    protected void gvCoursechoosing_SelectedIndexChanging1(object sender, GridViewSelectEventArgs e)
    {
        string studentName = (string)Session["name"];
        int id = (int)Session["id"];
        int course_id = Convert.ToInt32(this.gvCoursechoosing.Rows[e.NewSelectedIndex].Cells[1].Text);
        string course_nmae = this.gvCoursechoosing.Rows[e.NewSelectedIndex].Cells[2].Text;
        int credit = Convert.ToInt32(this.gvCoursechoosing.Rows[e.NewSelectedIndex].Cells[3].Text);
        string teacher_name = this.gvCoursechoosing.Rows[e.NewSelectedIndex].Cells[5].Text;
        string sql = "insert into score(id,name,course_id,course_name,credit,teacher_name) values('" + id + "','" + studentName + "','" + course_id + "','" + course_nmae + "','" + credit + "','" + teacher_name + "')";
        string conn = ConfigurationManager.ConnectionStrings["performanceConnectionString"].ConnectionString;
        SqlConnection sqlConnection = new SqlConnection(conn);
        try
        {
            sqlConnection.Open();
            SqlCommand sqlCommand = new SqlCommand();
            sqlCommand.Connection = sqlConnection;
            sqlCommand.CommandText = sql;
            sqlCommand.ExecuteNonQuery();

        }
        finally
        {
            sqlConnection.Close();
            SelectedCourse();
        }
        lblCourseChoosing.Text = "选课成功！";
    }

    protected void gvCoursechoosing_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            if (e.Row.RowState == DataControlRowState.Normal || e.Row.RowState ==
                DataControlRowState.Alternate)
            {
                ((LinkButton)e.Row.Cells[0].Controls[0]).Attributes.Add("onclick",
                    "javascript:return confirm('你确定要选：\"" +
                    e.Row.Cells[2].Text + "\"这门课程吗？')");
            }
        }
    }



    protected void btnQuery_Click(object sender, EventArgs e)
    {
        if (ddlCollege.SelectedIndex != -1)
        {
            string sql = "select id,name,credit,college,teacher_name from course where college='" + ddlCollege.SelectedItem.Text + "'";
            CourseChosing(sql);
        }


    }

    protected void btnChange_Click(object sender, EventArgs e)
    {
        Response.Redirect("InfoSecurity.aspx");
    }
}