using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TopicPageMaster : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button_Insert_Click(object sender, EventArgs e)
    {
        if (IsValid)
        {
            TopicSource.InsertParameters["Top_Name"].DefaultValue = TextBox_Top_Name.Text;
            TopicSource.InsertParameters["Crs_Id"].DefaultValue = DropDownList_Crs.SelectedValue;
            TopicSource.Insert();
        }
    }
}