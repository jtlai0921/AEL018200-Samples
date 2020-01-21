using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class prac2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write("<b><i>生日快樂</i></b>");
        Response.Write("<br>");
        Response.Write("<a href=\"default.htm\">回首頁</a>");
        Response.Write("<br>");
        Response.Write(Server.HtmlEncode("<hr align=\"Left\" width=\"70%\">"));
    }
}