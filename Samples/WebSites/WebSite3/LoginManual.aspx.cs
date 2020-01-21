using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class LoginManual : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string User = UserName.Text.Trim();
        string PWD = Password.Text.Trim();
        bool SavePWD = SavePassword.Checked;

        if (Membership.ValidateUser(User, PWD))
        {
            Label1.Visible = false;
            FormsAuthentication.RedirectFromLoginPage(User, SavePWD);
        }
        else
            Label1.Visible = true;
    }
}