using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Students : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



   
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        string str = e.CommandName;
        Response.Redirect("CourseDetails.aspx?photo1=" + str);
    }

    protected void Image2_Command(object sender, CommandEventArgs e)
    {
        Response.Redirect("Students.aspx");
    }
}