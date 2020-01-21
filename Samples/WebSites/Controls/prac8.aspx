<%@ Page Language="C#" AutoEventWireup="true" CodeFile="prac8.aspx.cs" Inherits="prac8" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:ImageButton ID="ImageButton1" runat="server" Height="200px" ImageUrl="~/fig.JPG" OnClick="ShowMsg" />
    
    </div>
        <p>
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </p>
    </form>
</body>
</html>
