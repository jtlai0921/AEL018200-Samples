using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class prac9 : System.Web.UI.Page
{
    int i = 1;
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write(i);
    }

    void MySub()
    {
        
        Response.Write(i);
    }
}