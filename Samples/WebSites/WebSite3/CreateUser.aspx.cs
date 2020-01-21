using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CreateUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    }

    protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
    {

    }

    protected void CreateUserWizard1_SendingMail(object sender, MailMessageEventArgs e)
    {
        string mailBody = e.Message.Body;
        mailBody = mailBody.Replace("<%Email%>", CreateUserWizard1.Email);
        mailBody = mailBody.Replace("<%Question%>", CreateUserWizard1.Question);
        mailBody = mailBody.Replace("<%Answer%>", CreateUserWizard1.Answer);
        e.Message.Body = mailBody;
    }
}