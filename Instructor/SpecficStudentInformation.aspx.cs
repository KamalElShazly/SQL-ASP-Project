﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SpecficStudentInformation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["Role"].ToString() != "Instructor")
        {
            Response.Redirect("../Anonymous/ErrorPage.aspx");
        }
        GridView2.SelectRow(0);


    }


}