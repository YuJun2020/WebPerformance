using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class TeacherGrading : System.Web.UI.Page
{
    static int i = 0;
    static string[,] score = new string[10, 5];
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            btnTeacher.Text = "欢迎你," + Session["name"];
        }
        if (Session["name"] == null || Session["name"] == "")
        {
            Response.Redirect("Login.aspx");
        }
        //string conn = "Data Source=localhost;database=performance;Integrated Security=True;";
        //string sql = "select id,name,course_id,course_name,credit,normal_score,test_score,final_score from score";
        //SqlDataAdapter da = new SqlDataAdapter(sql, conn);
        //DataSet ds = new DataSet();
        //da.Fill(ds, "score");
        //gvGrade.DataSource = ds.Tables["score"];
        //gvGrade.DataBind();



    }

    protected void imgLogo_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("HomePage.aspx");
    }

    protected void txtNormalScore_TextChanged(object sender, EventArgs e)
    {
        TextBox tb = (TextBox)sender;
        GridViewRow gvr = (GridViewRow)tb.NamingContainer;
        TextBox tbNormalScore = (TextBox)gvr.FindControl("txtNormalScore");
        TextBox tbTestScore = (TextBox)gvr.FindControl("txtTestScore");

        if (tbNormalScore.Text == "")
        {
            tbNormalScore.Text = "0";
        }
        if (tbTestScore.Text == "")
        {
            tbTestScore.Text = "0";
        }
        float result = (float)(Convert.ToDouble(tbNormalScore.Text) * 0.1 + Convert.ToDouble(tbTestScore.Text) * 0.9);
        Label lbl = (Label)gvr.FindControl("lblFinalScore");
        lbl.Text = result.ToString();

    }

    protected void txtTestScore_TextChanged(object sender, EventArgs e)
    {

        TextBox tb = (TextBox)sender;
        GridViewRow gvr = (GridViewRow)tb.NamingContainer;
        TextBox tbNormalScore = (TextBox)gvr.FindControl("txtNormalScore");
        TextBox tbTestScore = (TextBox)gvr.FindControl("txtTestScore");
        int id = Convert.ToInt32(gvr.Cells[0].Text);
        int course_id = Convert.ToInt32(gvr.Cells[2].Text);
        if (tbNormalScore.Text == "")
        {
            tbNormalScore.Text = "0";
        }
        if (tbTestScore.Text == "")
        {
            tbTestScore.Text = "0";
        }
        float result = (float)(Convert.ToDouble(tbNormalScore.Text) * 0.1 + Convert.ToDouble(tbTestScore.Text) * 0.9);
        Label lbl = (Label)gvr.FindControl("lblFinalScore");
        lbl.Text = result.ToString();
        //string[,] score = new string[10, 3];
        if (tbNormalScore.Text != "" && tbTestScore.Text != "" && lbl.Text != "")
        {
            score[i, 0] = Convert.ToString(id);
            score[i, 1] = Convert.ToString(course_id);
            score[i, 2] = tbNormalScore.Text;
            score[i, 3] = tbTestScore.Text;
            score[i, 4] = lbl.Text;
            i++;
        }
        //Session["score"] = score;
    }



    protected void btnTs_Click(object sender, EventArgs e)
    {
        string[,] score1 = score;
        Session["score"] = score1;
        lblinfo.Text = "学生成绩已暂存";
    }

    protected void btnCommit_Click(object sender, EventArgs e)
    {
        int i;
        string[,] score2 = (string[,])Session["score"];
        string conn = ConfigurationManager.ConnectionStrings["performanceConnectionString"].ConnectionString;
        for (i = 0; i < score2.Length / 5; i++)
        {
            string sql = "Update score set normal_score='" + (float)Convert.ToInt32(score2[i, 2]) + "',test_score='" + (float)Convert.ToInt32(score2[i, 3]) + "',final_score='" + (float)Convert.ToInt32(score2[i, 3]) + "'where id='" + Convert.ToInt32(score2[i, 0]) + "'and course_id='" + Convert.ToInt32(score2[i, 1]) + "'";

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

            }
        }
        lblinfo.Text = "学生成绩已成功录入系统";

    }

    protected void btnChange_Click(object sender, EventArgs e)
    {
        Response.Redirect("InfoSecurity.aspx");
    }
}