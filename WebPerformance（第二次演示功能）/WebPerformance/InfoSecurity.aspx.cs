using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;
using System.Security.Cryptography;

public partial class InfoSecurity : System.Web.UI.Page
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

    protected void btnChange_Click(object sender, EventArgs e)
    {
        string sql;
        string identify = (string)Session["identify"];
        string name = (string)Session["name"];

        byte[] result = Encoding.Default.GetBytes(txtPwd.Text);
        MD5 md5 = new MD5CryptoServiceProvider();
        byte[] output = md5.ComputeHash(result);
        string pwd = BitConverter.ToString(output).Replace("-", "");

        if (identify == "学生")
        {
            sql = "Update student set password='" + pwd + "'where name='" + name + "'";
        }
        else
        {
            sql = "Update teacher set password='" + pwd + "'where name='" + name + "'";
        }

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
            lblInfo.Text = "密码已修改,请重新登录";

        }
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
}