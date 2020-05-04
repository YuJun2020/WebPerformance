using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Security.Cryptography;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string comm = (string)Session["switch"];
        if (lblValidate.Text.Equals("验证失败") || lblValidate.Text == "")
        {
            lblErrorMessage.Text = "请先通过验证码验证，再登录";

        }
        else
        {
            String sql;
            if (rblIdentity.SelectedItem.Text.Equals("管理员"))
            {
                sql = "select * from administrator where name='" + txtId.Text + "'";
            }
            else if (rblIdentity.SelectedItem.Text.Equals("教师"))
            {


                sql = "select * from teacher where name='" + txtId.Text + "'";
            }
            else
            {

                sql = "select * from student where name='" + txtId.Text + "'";

            }

            //SqlConnection sqlConnection = new SqlConnection(connectionString);
            try
            {
                String conn = "Data Source=localhost;database=performance;Integrated Security=True";
                SqlDataAdapter da = new SqlDataAdapter(sql, conn);
                DataSet ds = new DataSet();
                da.Fill(ds);
                //SqlCommand sqlCommand = new SqlCommand(sql, sqlConnection);
                //sqlCommand.Parameters.AddWithValue("@username",txtId.Text);
                //sqlCommand.Parameters.AddWithValue("@pwd",txtPassword.Text);
                //sqlConnection.Open();
                //SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlCommand);
                //DataTable dataTable = new DataTable();
                //sqlDataAdapter.Fill(dataTable);

                byte[] result = Encoding.Default.GetBytes(txtPassword.Text);
                MD5 md5 = new MD5CryptoServiceProvider();
                byte[] output = md5.ComputeHash(result);
                string pwd = BitConverter.ToString(output).Replace("-", "");

                if (ds.Tables[0].Rows.Count > 0)
                {
                    if (ds.Tables[0].Rows[0]["password"].ToString() == pwd)
                    {
                        Session["name"] = txtId.Text;
                        Session["id"] = ds.Tables[0].Rows[0]["id"];
                        if (rblIdentity.SelectedItem.Text.Equals("管理员"))
                        {
                            Response.Redirect("AdminPageControl.aspx");
                        }
                        else if (rblIdentity.SelectedItem.Text.Equals("教师"))
                        {
                            if (comm == "开" || comm == "" || comm == null)
                            {
                                Session["identify"] = "教师";
                                Response.Redirect("TeacherGrading.aspx");
                            }
                            else
                                lblErrorMessage.Text = "不在开放时间内，教师登录功能已关闭";
                        }
                        else
                        {
                            if (comm == "开" || comm == "" || comm == null)
                            {
                                Session["identify"] = "学生";
                                Response.Redirect("CourseChoosing.aspx");
                            }
                            else
                                lblErrorMessage.Text = "不在开放时间内，学生登录功能已关闭";

                        }
                    }
                    else
                    {
                        lblErrorMessage.Text = "密码错误，请重新输入";
                    }

                }
                else
                {
                    lblErrorMessage.Text = "账号错误，请重新输入";
                }
            }
            catch (Exception ex)
            {

            }
            finally
            {

            }
        }

    }



    protected void btnValidate_Click(object sender, EventArgs e)
    {
        string str = (string)Session["ValidateNum"];

        if (txtValidate.Text.Equals(str))
        {
            lblValidate.Text = "验证成功";
        }
        else
        {
            lblValidate.Text = "验证失败";
        }
    }
}
