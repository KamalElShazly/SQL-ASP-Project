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
            DepartmentSource.InsertParameters["St_Name"].DefaultValue = NameTxt.Text;
            DepartmentSource.InsertParameters["St_Age"].DefaultValue = AgeTxt.Text;
            DepartmentSource.InsertParameters["St_Address"].DefaultValue = AddressTxt.Text;
            DepartmentSource.InsertParameters["Dept_Id"].DefaultValue = DepartmentList.SelectedValue;
            DepartmentSource.Insert();
        }
    }
}