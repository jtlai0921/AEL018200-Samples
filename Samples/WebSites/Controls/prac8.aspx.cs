using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class prac8 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ShowMsg(object sender, ImageClickEventArgs e)
    {
        Label1.Text = "您點按的座標為 (" + e.X.ToString() + ", " + e.Y.ToString() + ")";
    }
}