using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class browser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write("作業系統：" + Request.Browser.Platform + "<br>");
        Response.Write("瀏覽器：" + Request.Browser.Browser + "<br>");
        Response.Write("瀏覽器版本：" + Request.Browser.Version + "<br>");
        Response.Write("瀏覽器主要版本：" + Request.Browser.MajorVersion + "<br>");
        Response.Write("瀏覽器次要版本：" + Request.Browser.MinorVersion + "<br>");
        Response.Write("是否支援JavaApplet：" + Request.Browser.JavaApplets + "<br>");       
        Response.Write("是否支援VBScript：" + Request.Browser.VBScript + "<br>");
        Response.Write("是否支援Cookie：" + Request.Browser.Cookies);
    }
}