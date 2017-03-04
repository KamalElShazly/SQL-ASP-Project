using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ErrorPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Session["Role"].ToString() == "Admin")
        {
            Response.Redirect("HomePage.aspx");
        }
        else if (Session["Role"].ToString() == "Student")
        {
            Response.Redirect("HomePage.aspx");
        }
        else if (Session["Role"].ToString() == "Instructor")
        {
            Response.Redirect("HomePage.aspx");
        }
        else
        {
            Response.Redirect("HomePage.aspx");
        }
    }
}