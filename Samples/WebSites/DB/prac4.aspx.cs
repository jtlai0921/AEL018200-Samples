using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class prac4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ShowOrderList(object sender, GridViewCommandEventArgs e)
    {
        int i = Convert.ToInt32(e.CommandArgument);
        GridViewRow SelectedRow = GridView1.Rows[i];
        TableCell Product = SelectedRow.Cells[1];
        if (e.CommandName == "Order")
            Label1.Text += Product.Text + "已經放入購物車" + "<br>";
    }
}