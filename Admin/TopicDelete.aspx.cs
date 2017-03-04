using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TopicDelete : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Role"].ToString() != "Admin")
        {
            Response.Redirect("../Anonymous/ErrorPage.aspx");
        }
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        ObjectDataSource_Topic.SelectParameters["Crs_Id"].DefaultValue = DropDownList1.SelectedValue;
        ObjectDataSource_Topic.Select();
    }
}