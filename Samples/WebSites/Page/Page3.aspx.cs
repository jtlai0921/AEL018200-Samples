using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Page3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write("<p>呼叫Execute()方法之前</p>");
        Server.Execute("Page4.aspx");
        Response.Write("<p>呼叫Execute()方法之後</p>");
    }
}