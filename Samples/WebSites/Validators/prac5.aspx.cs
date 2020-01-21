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
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    }

    protected void IsEven(object source, ServerValidateEventArgs args)
    {
        args.IsValid = (Convert.ToInt16(args.Value) % 2 == 0);
    }
}