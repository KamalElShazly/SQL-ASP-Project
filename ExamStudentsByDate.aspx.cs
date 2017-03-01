using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ExamStudentsByDate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        ObjectDataSource_StudentExam.SelectParameters["Ex_Date"].DefaultValue = DropDownList1.Text;
        ObjectDataSource_StudentExam.Select();
    }
}