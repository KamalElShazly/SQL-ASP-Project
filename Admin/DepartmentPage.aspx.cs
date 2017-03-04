using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DepartmentPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void InsertBtn_Click(object sender, EventArgs e)
    {
        if (IsValid)
        {
            DepartmentSource.InsertParameters["Dept_Name"].DefaultValue = NameTxt.Text;
            DepartmentSource.InsertParameters["Mgr_Id"].DefaultValue = ManagerList.SelectedValue;
            DepartmentSource.Insert();
        }
    }
}