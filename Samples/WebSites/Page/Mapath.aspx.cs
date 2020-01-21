using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Mapath : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write("網頁實際路徑為 " + Page.MapPath("MapPath.aspx") + "<br>");
        Response.Write("目前應用程式的根目錄為 " + Page.MapPath("~"));        
    }
}