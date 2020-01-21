using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class QS2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string Name = Request["Name"];
        string Address = Request["Address"];
        Response.Write(Name + "您好!<br>" + "您輸入的地址是" + Address);

    }
}