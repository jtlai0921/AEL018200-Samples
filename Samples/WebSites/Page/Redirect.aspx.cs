using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Redirect : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string PageName = "";
        DateTime dt = DateTime.Now;             //取得今天的日期	
        int WeekDay = (int)dt.DayOfWeek;        //根據日期取得星期幾
        switch (WeekDay)                        //根據星期幾決定要顯示的網頁名稱
        {
            case 0:
                PageName = "Sun.html";
                break;
            case 1:
                PageName = "Mon.html";
                break;
            case 2:
                PageName = "Tue.html";
                break;
            case 3:
                PageName = "Wed.html";
                break;
            case 4:
                PageName = "Thu.html";
                break;
            case 5:
                PageName = "Fri.html";
                break;
            case 6:
                PageName = "Sat.html";
                break;
        }
        Response.Redirect(PageName);
    }
}