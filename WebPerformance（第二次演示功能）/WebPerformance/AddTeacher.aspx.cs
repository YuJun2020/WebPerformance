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

public partial class AddTeacher : System.Web.UI.Page
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

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        byte[] result = Encoding.Default.GetBytes(txtPassword.Text);
        MD5 md5 = new MD5CryptoServiceProvider();
        byte[] output = md5.ComputeHash(result);
        string pwd = BitConverter.ToString(output).Replace("-", "");
        String sql = "Insert into teacher(id,name,password,college_name) values('" + this.txtId.Text + "','" + this.txtName.Text + "','" + pwd + "','" + this.ddlCollege.SelectedItem.Text + "')";

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
            Response.Redirect("TeacherManagement.aspx");
        }
    }
}