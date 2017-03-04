using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TopicInsert : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Role"].ToString() != "Admin")
        {
            Response.Redirect("../Anonymous/ErrorPage.aspx");
        }
    }

    protected void Button_Insert_Click(object sender, EventArgs e)
    {
        if (IsValid)
        {
            ObjectDataSource_Topic.InsertParameters["Top_Name"].DefaultValue = TextBox_Topic_Name.Text;
            ObjectDataSource_Topic.InsertParameters["Crs_Id"].DefaultValue = DropDownList1.SelectedValue;
            ObjectDataSource_Topic.Insert();
        }
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        ObjectDataSource_Topic.SelectParameters["Crs_Id"].DefaultValue = DropDownList1.SelectedValue;
        ObjectDataSource_Topic.Select();
    }
}