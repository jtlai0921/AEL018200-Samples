<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CreateUserManual.aspx.cs" Inherits="CreateUserManual" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        使用者名稱：<asp:TextBox ID="UserName" runat="server"></asp:TextBox>
        <br />
        密碼：<asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        確認密碼：<asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        Email：<asp:TextBox ID="Email" runat="server"></asp:TextBox>
        <br />
        安全性問題：<asp:TextBox ID="Question" runat="server"></asp:TextBox>
        <br />
        安全性解答：<asp:TextBox ID="Answer" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="建立新帳戶" />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
