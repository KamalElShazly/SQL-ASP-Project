using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Student_ExamResult : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataSet ds = ExamLayer.SelectExamResult(int.Parse(Session["ID"].ToString()), int.Parse(Session["ExamID"].ToString()));
            Label1.Text = ds.Tables[0].Rows[0].ItemArray[0].ToString();
            Label2.Text = ds.Tables[0].Rows[0].ItemArray[1].ToString();
        }
    }
}