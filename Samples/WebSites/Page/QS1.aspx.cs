using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class QS1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ShowMsg(object sender, EventArgs e)
    {
        Response.Redirect("QS2.aspx?Name=" + Server.HtmlEncode(TextBox1.Text) + "&Address=" + Server.HtmlEncode(TextBox2.Text));
    }
}