<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChangePwd.aspx.cs" Inherits="Member_ChangePwd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:ChangePassword ID="ChangePassword1" runat="server" ContinueDestinationPageUrl="~/Member/Default.aspx">
        </asp:ChangePassword>
    
    </div>
    </form>
</body>
</html>
