<%@ Page Language="C#" AutoEventWireup="true" CodeFile="prac17.aspx.cs" Inherits="prac17" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Panel ID="Panel1" runat="server" Height="25px" Width="250px">
            生日快樂<br /> 
        </asp:Panel>
    
    </div>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="ShowOrHide" Text="隱藏Panel控制項" />
    </form>
</body>
</html>
