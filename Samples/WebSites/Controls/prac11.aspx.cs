using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class prac11 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    protected void Calculate(object sender, EventArgs e)
    {
        int Quantity = Convert.ToInt16(TextBox1.Text);
        Double Price = Convert.ToDouble(TextBox2.Text);

        if (CheckBox1.Checked)
            Label3.Text = "總價：" + (Quantity * Price * 1.05).ToString();
        else
            Label3.Text = "總價：" + (Quantity * Price).ToString();

    }
}