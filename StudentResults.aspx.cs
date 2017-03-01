using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SrudentResults : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            CourseSource.SelectParameters["st_id"].DefaultValue = ((Label)GridView_st.Rows[0].Cells[0].FindControl("Label_St_Id")).Text;
            CourseSource.Select();
        }
    }

    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        CourseSource.SelectParameters["st_id"].DefaultValue = ((Label)GridView_st.Rows[e.NewSelectedIndex].Cells[0].FindControl("Label_St_Id")).Text;
        CourseSource.Select();
    }
}