using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class prac1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        const double PI = 3.14159;
        double Radius = 10;
        double CircleArea = PI * Radius * Radius;
        Response.Write("半徑為" + Radius + "的圓面積為" + CircleArea);
    }
}