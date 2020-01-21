
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="prac13.aspx.cs" Inherits="prac13" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="請選擇您喜愛的早餐 (可複選)："></asp:Label>
        <br />
        <br />
        <asp:ListBox ID="ListBox1" runat="server" SelectionMode="Multiple">
            <asp:ListItem>三明治</asp:ListItem>
            <asp:ListItem>蛋餅</asp:ListItem>
            <asp:ListItem>漢堡</asp:ListItem>
            <asp:ListItem>培果</asp:ListItem>
        </asp:ListBox>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="ShowMsg" Text="確定" />
        <br />
        <br />
        <asp:Label ID="Label2" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
