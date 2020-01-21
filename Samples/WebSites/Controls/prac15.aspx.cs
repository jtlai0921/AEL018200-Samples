using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class prac15 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Create(object sender, EventArgs e)
    {
        for (int i = 1; i <= Convert.ToUInt16(DropDownList1.SelectedValue); i++)
        {
            TableRow myTableRow = new TableRow();
            for (int j = 1; j <= Convert.ToUInt16(DropDownList2.SelectedValue); j++)
            {
                TableCell myTableCell = new TableCell();
                myTableCell.Text = "第 " + i.ToString() + " 列第 " + j.ToString() + " 欄";
                myTableRow.Cells.Add(myTableCell);
            }
            Table1.Rows.Add(myTableRow);
        }

    }
}