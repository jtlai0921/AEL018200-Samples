using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class prac13 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
            }





    protected void ShowMsg(object sender, EventArgs e)
    {
        string Msg = "您喜愛的早餐有";
        for (int i = 0; i < ListBox1.Items.Count; i++)
        {
            if (ListBox1.Items[i].Selected)
                Msg += ListBox1.Items[i].Value + "　";
        }
        Label2.Text = Msg;
    }
}