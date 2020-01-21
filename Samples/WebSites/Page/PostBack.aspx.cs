using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PostBack : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
        }
        else
        {
            Panel1.Visible = false;
            Panel2.Visible = true;
        }
    }

    protected void ShowTotal(object sender, EventArgs e)
    {
        Label1.Text = Convert.ToString(Convert.ToDouble(TextBox1.Text) + Convert.ToDouble(TextBox1.Text) * Convert.ToDouble(TextBox2.Text));
    }
}