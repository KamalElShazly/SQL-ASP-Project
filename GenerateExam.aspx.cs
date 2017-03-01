using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class GenerateExam : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void GenerateBtn_Click(object sender, EventArgs e)
    {
        DataView Questions = (DataView)ExamSource.Select();
        foreach(DataRowView Question in Questions)
        {
            TableRow tRow = new TableRow();
            foreach (string q in Question.Row.ItemArray)
            {
                TableCell tCell = new TableCell();
                tCell.Text = q;
                tRow.Cells.Add(tCell);
            }
            Table1.Rows.Add(tRow);
        }
    }
}