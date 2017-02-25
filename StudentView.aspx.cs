using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StudentView : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void InsertBtn_Click(object sender, EventArgs e)
    {
        if (IsValid)
        {
            StudentSource.InsertParameters["St_Name"].DefaultValue = NameTxt.Text;
            StudentSource.InsertParameters["St_Age"].DefaultValue = AgeTxt.Text;
            StudentSource.InsertParameters["St_Address"].DefaultValue = AddressTxt.Text;
            StudentSource.InsertParameters["Dept_Id"].DefaultValue = DepartmentList.SelectedValue;
            StudentSource.Insert();
        }
    }
}