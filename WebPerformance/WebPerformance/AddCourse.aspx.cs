using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddCourse : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        btnAdmin.Text = "欢迎你，" + (String)Session["name"];
    }

    protected void Image2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Student.aspx");
    }


    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        String path="";
        if (FileUpload1.HasFile)
        {
            path = "~/images/";
            path = path + FileUpload1.FileName;
            
        }
        
        String cmd = @"Insert into course(id,name,photo,credit,property) values('"+this.txtId.Text+"','"+this.txtName.Text+"','"+path+"','"+this.txtCredit.Text+"','"+this.txtProperty.Text+"')";

        String connectionString = "Data Source=localhost;database=performance;Integrated Security=True";
        SqlConnection sqlConnection = new SqlConnection(connectionString);
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