using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class prac17 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ShowOrHide(object sender, EventArgs e)
    {
        if (Panel1.Visible)
        {
            Panel1.Visible = false;
            Button1.Text = "顯示Panel控制項";
        }
        else
        {
            Panel1.Visible = true;
            Button1.Text = "隱藏Panel控制項";
        }

    }
}