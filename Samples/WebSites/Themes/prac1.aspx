<%@ Page Language="C#" AutoEventWireup="true" CodeFile="prac1.aspx.cs" Inherits="prac1" Theme="Theme1" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="Button1" runat="server" Text="按鈕一" />

    
    &nbsp;
        <asp:Button ID="Button2" runat="server" SkinID="RedButton" Text="按鈕二" />
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server">超連結</asp:HyperLink>

    
    </div>
    </form>
</body>
</html>
