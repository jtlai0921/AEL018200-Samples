using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class prac16 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ShowMsg(object sender, EventArgs e)
    {
        Label1.Text = "您選擇的日期是：" + Calendar1.SelectedDate.ToShortDateString();
    }
}