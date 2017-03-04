using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Instractor : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (IsValid)
        {
            ObjectDataSource1.InsertParameters["Ins_Name"].DefaultValue = tex_name.Text;
            ObjectDataSource1.InsertParameters["Ins_Age"].DefaultValue = tex_age.Text;
            ObjectDataSource1.InsertParameters["Ins_Address"].DefaultValue = tex_adress.Text;
            ObjectDataSource1.InsertParameters["Dept_Id"].DefaultValue = Drop_depart.SelectedValue;
            ObjectDataSource1.InsertParameters["Ins_Salary"].DefaultValue = tex_sal.Text;

            ObjectDataSource1.Insert();
        }
    }
}