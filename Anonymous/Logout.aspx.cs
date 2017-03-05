using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Anonymous_Logout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["ID"] = string.Empty;
        Session["Name"] = string.Empty;
        Session["Role"] = string.Empty;
        Session["ExamID"] = string.Empty;
        Response.Redirect("HomePage.aspx");
    }
}