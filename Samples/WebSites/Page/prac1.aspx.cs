using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class prac1 : System.Web.UI.Page
{
    protected void Page_Init(object sender, EventArgs e)
    {
        DropDownList1.Items.Add("故宮");
        DropDownList1.Items.Add("阿里山");
        DropDownList1.Items.Add("日月潭");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DropDownList1.Items.Add(TextBox1.Text);
    }


    protected void Page_Load(object sender, EventArgs e)    
    {
        
    }



}