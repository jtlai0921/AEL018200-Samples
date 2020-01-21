<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PwdRecovery.aspx.cs" Inherits="PwdRecovery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:PasswordRecovery ID="PasswordRecovery1" runat="server">
            <MailDefinition From="jean1022@seed.net.tw" Subject="查詢密碼通知">
            </MailDefinition>
        </asp:PasswordRecovery>
    
    </div>
    </form>
</body>
</html>
