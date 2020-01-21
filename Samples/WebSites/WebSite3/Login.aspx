<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Login ID="Login1" runat="server" DestinationPageUrl="~/Member/Default.aspx" PasswordRecoveryText="查詢密碼" PasswordRecoveryUrl="~/PwdRecovery.aspx">
        </asp:Login>
    
    </div>
    </form>
</body>
</html>
