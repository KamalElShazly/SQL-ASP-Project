using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TopicUpdate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        ObjectDataSource_Topic.SelectParameters["Crs_Id"].DefaultValue = DropDownList1.SelectedValue;
        ObjectDataSource_Topic.Select();
    }


}