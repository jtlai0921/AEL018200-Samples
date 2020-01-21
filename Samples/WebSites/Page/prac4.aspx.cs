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
    protected void Page_Init(object sender, EventArgs e)
    {
        RadioButtonList1.Items.Add("ASCII");
        RadioButtonList1.Items.Add("Unicode");
        RadioButtonList1.Items.Add("UTF-8");
    }

}