using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class CreateUserManual : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        MembershipCreateStatus Result;
        Membership.CreateUser(UserName.Text.Trim(), Password.Text.Trim(),
         Email.Text.Trim(), Question.Text.Trim(), Answer.Text.Trim(), true, out Result);

        if (Result == MembershipCreateStatus.Success)
            Label1.Text = "帳戶建立成功";
        else
            Label1.Text = "帳戶建立失敗，原因「" + Result.ToString() + "」";

    }
}