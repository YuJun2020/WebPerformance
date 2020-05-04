using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

public partial class AllCourse : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        string str = e.CommandName;
        Response.Redirect("CourseDetails.aspx?photo1=" + str);

    }

    protected void Image2_Command(object sender, CommandEventArgs e)
    {
        Response.Redirect("HomePage.aspx");
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
}