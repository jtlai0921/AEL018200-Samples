using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class prac1a : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Application.Clear();
        Application.Add("Corp", "快樂公司");
        Application.Add("Tel", "12345678");
        Application.Add("City", "台北");
        for (int i = 0; i < Application.Count; i++)
            Response.Write(Application[i] + "<br>");
    }
}