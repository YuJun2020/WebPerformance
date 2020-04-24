using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        String sql;
        if (rblIdentity.SelectedItem.Text.Equals("管理员"))
        {
            sql = "select * from administrator where name=@username and password=@pwd";
        }
        else if (rblIdentity.SelectedItem.Text.Equals("教师"))
        {
            sql = "select * from administrator where name=@username and password=@pwd";
        }
        else
        {
           sql = "select * from student where name=@username and password=@pwd";

        }


        String connectionString = "Data Source=localhost;database=performance;Integrated Security=True";
        SqlConnection sqlConnection = new SqlConnection(connectionString);
        try
        {
            SqlCommand sqlCommand = new SqlCommand(sql, sqlConnection);
            sqlCommand.Parameters.AddWithValue("@username",txtId.Text);
            sqlCommand.Parameters.AddWithValue("@pwd",txtPassword.Text);
            sqlConnection.Open();
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlCommand);
            DataTable dataTable = new DataTable();
            sqlDataAdapter.Fill(dataTable);
            if (dataTable.Rows.Count > 0)
            {
                Session["name"] = txtId.Text;
                Response.Redirect("Admin.aspx");
            }
            else
            {
                lblErrorMessage.Text = "账号或密码错误，请重新输入";
            }
        }
        catch (Exception ex)
        {
            
        }
        finally
        {
            sqlConnection.Close();
        }

    }

    
}
