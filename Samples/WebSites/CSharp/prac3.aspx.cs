using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class prac3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int Score = 85;
        if (Score >= 90) Response.Write("優等！");
        else if (Score < 90 & Score >= 80) Response.Write("甲等！");
        else if (Score < 80 & Score >= 70) Response.Write("乙等！");
        else if (Score < 70 & Score >= 60) Response.Write("丙等！");
        else if (Score < 60) Response.Write("不及格！");
    }
}