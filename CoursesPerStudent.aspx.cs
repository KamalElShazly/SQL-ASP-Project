using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CoursesPerStudent : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void DropDownList_St_Name_SelectedIndexChanged(object sender, EventArgs e)
    {
        ObjectDataSource_Course.SelectParameters["St_Id"].DefaultValue = DropDownList_St_Name.SelectedValue;
        ObjectDataSource_Course.Select();
    }
}