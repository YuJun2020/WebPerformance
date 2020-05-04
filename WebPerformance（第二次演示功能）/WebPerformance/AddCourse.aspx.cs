using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Configuration;

public partial class AddCourse : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        btnAdmin.Text = "欢迎你，" + (String)Session["name"];
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
        String path = "";
        if (FileUpload1.HasFile)
        {
            path = "~/images/";
            path = path + FileUpload1.FileName;

        }

        String cmd = @"Insert into course(id,name,photo,credit,property,college,teacher_name) values('" + this.txtId.Text + "','" + this.txtName.Text + "','" + path + "','" + this.txtCredit.Text + "','" + this.txtProperty.Text + "','" + this.ddlCollege.SelectedItem.Text + "','" + this.txtTeacher.Text + "')";

        string conn = ConfigurationManager.ConnectionStrings["performanceConnectionString"].ConnectionString;
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
            Response.Redirect("Admin.aspx");
        }
    }




}