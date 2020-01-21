using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Page1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write("<P>呼叫Transfer()方法之前</P>");
        Server.Transfer("Page2.aspx");                      //將控制權轉移到Page2.aspx後便不再返回
        Response.Write("<P>呼叫Transfer()方法之後</P>");    //故不會執行此敘述
    }
}