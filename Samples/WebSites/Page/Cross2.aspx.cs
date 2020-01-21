using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Cross2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox Cash = (TextBox)PreviousPage.FindControl("TextBox1");
        TextBox Rate = (TextBox)PreviousPage.FindControl("TextBox2");
        Label1.Text = Convert.ToString(Convert.ToDouble(Cash.Text) + Convert.ToDouble(Cash.Text) * Convert.ToDouble(Rate.Text));
    }
}