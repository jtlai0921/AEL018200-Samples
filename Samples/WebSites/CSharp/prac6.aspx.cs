using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class prac6 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int[,] Scores = { { 85, 90 }, { 91, 93 }, { 77, 86 } , { 100, 100 } };

        for (int i = 0; i < Scores.GetLength(0); i++)
            Response.Write("第" + (i + 1) + "個學生的總分為" + (Scores[i, 0] + Scores[i, 1]) + "<br>");


    }
}