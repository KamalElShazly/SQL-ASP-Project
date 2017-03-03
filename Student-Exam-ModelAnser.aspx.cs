using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_Exam_ModelAnser : System.Web.UI.Page
{
   protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            GridView2.SelectRow(0);
        }
    }

    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridView55.SelectRow(0);
    }
}