using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ReadCookie : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie aCookie = Request.Cookies["UserInfo"];
        if (aCookie != null)
        {
            Response.Write("名稱：" + aCookie.Values["UserName"] + "<br>");
            Response.Write("地址：" + aCookie.Values["UserAddress"] + "<br>");
            Response.Write("最後瀏覽日期：" + aCookie.Values["LastVisited"]);
        }    
        else
        {
            Response.Write("找不到指定的Cookie");
        }        
    }
}