using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ViewState : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (ViewState["x"] == null) Label1.Text = "尚未按 [確定]";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (ViewState["x"] == null)
            ViewState.Add("x", 1);  //亦可寫成ViewState["x"] = 1;
        else
            ViewState.Add("x", (int)ViewState["x"] + 1);  //亦可寫成ViewState["x"] = (int)ViewState["x"] + 1;
        Label1.Text = "第" + ViewState["x"] + "次按 [確定]";
    }
}