<%@ Page Language="C#" AutoEventWireup="true" CodeFile="prac12.aspx.cs" Inherits="prac12" %>

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
        <asp:CheckBoxList ID="CheckBoxList1" runat="server" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged">
            <asp:ListItem>三明治</asp:ListItem>
            <asp:ListItem>蛋餅</asp:ListItem>
            <asp:ListItem>漢堡</asp:ListItem>
            <asp:ListItem>培果</asp:ListItem>
        </asp:CheckBoxList>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="ShowMsg" Text="確定" />
        <br />
        <br />
        <asp:Label ID="Label2" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
