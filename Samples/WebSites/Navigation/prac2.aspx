<%@ Page Language="C#" AutoEventWireup="true" CodeFile="prac2.aspx.cs" Inherits="prac2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
        <asp:TreeView ID="TreeView1" runat="server" DataSourceID="SiteMapDataSource1" ShowCheckBoxes="Leaf">
        </asp:TreeView>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="ShowMsg" Text="確定" />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
    </form>
</body>
</html>
