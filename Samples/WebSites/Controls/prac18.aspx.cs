using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class prac18 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Button Button1 = new Button();
        Button Button2 = new Button();
        Button1.Text = "按鈕一";
        Button2.Text = "按鈕二";
        PlaceHolder1.Controls.Add(Button1);
        PlaceHolder1.Controls.Add(Button2);
    }
}