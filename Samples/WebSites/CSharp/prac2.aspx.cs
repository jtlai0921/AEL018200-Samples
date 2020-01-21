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
        int A = 10, B = 3;
        string Result = "A + B = " + (A + B) + "<br>" +
                "A - B = " + (A - B) + "<br>" +
                "A * B = " + (A * B) + "<br>" +
                "A % B = " + (A % B) + "<br>" +
                "(5 <= 9) & (! (3 > 7)) = " + ((5 <= 9) & (!(3 > 7))) + "<br>" +
           "(2 < 4) && (3 < 5) = " + ((2 < 4) && (3 < 5)) + "<br>" +
           "\"A\" == \"a\" = " + ("A" == "a") + "<br>" +
              "-128 >> 3 = " + (-128 >> 3) + "<br>";
        Response.Write(Result);
    }
}