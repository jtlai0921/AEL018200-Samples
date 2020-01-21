<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginManual.aspx.cs" Inherits="LoginManual" %>

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
        <asp:CheckBox ID="SavePassword" runat="server" Text="儲存密碼" />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="登入" />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="登入失敗" Visible="False"></asp:Label>
    
    </div>
    </form>
</body>
</html>
