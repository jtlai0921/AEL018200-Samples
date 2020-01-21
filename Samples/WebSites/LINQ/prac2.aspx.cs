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
        int[] numbers = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };

        var evenNumbers = from n in numbers where (n % 2 == 0) select n;
        

        foreach (int num in evenNumbers)
            Response.Write(num + "<br>");
    }
}