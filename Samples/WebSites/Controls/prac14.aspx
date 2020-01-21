<%@ Page Language="C#" AutoEventWireup="true" CodeFile="prac14.aspx.cs" Inherits="prac14" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:BulletedList ID="BulletedList1" runat="server" DisplayMode="HyperLink">
            <asp:ListItem Value="https://www.google.com.tw/">Google台灣</asp:ListItem>
            <asp:ListItem Value="https://tw.yahoo.com/">Yahoo!奇摩</asp:ListItem>
            <asp:ListItem Value="http://www.pchome.com.tw/">PChome網路家庭</asp:ListItem>
        </asp:BulletedList>
    
    </div>
    </form>
</body>
</html>
