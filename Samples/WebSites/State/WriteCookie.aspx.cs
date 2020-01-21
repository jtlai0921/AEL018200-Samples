using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WriteCookie : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //建立名稱為 "UserInfo" 的Cookie
        HttpCookie aCookie = new HttpCookie("UserInfo");

        aCookie.Values["UserName"] = TextBox1.Text;
        aCookie.Values["UserAddress"] = TextBox2.Text;
        aCookie.Values["LastVisited"] = DateTime.Now.Date.ToString();
        //將Cookie的生命週期設定為7天
        aCookie.Expires = DateTime.Now.AddDays(7);
        
        //將Cookie加入Response.Cookies集合
        Response.Cookies.Add(aCookie);
    }
}