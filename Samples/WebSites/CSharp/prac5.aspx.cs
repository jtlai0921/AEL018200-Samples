using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class prac5 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int[] Scores = { 85, 60, 54, 91, 100, 77 };
        int MaxScore = 0, MinScore = 100;

        //使用迴圈找出最高分
        foreach (int Item in Scores)
            if (Item > MaxScore) MaxScore = Item;

        //使用迴圈找出最低分
        foreach (int Item in Scores)
            if (Item < MinScore) MinScore = Item;

        Response.Write("最高分為" + MaxScore);
        Response.Write("最低分為" + MinScore);

    }
}