<%@ Page Language="C#" AutoEventWireup="true" CodeFile="uplaod1.aspx.cs" Inherits="uplaod1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="上傳" />
        <br />
        <br />
        <asp:Label ID="Result" runat="server"></asp:Label>
        <br />
        <br />
        <asp:Panel ID="FileInfo" runat="server" Visible="False">
            檔案名稱：<asp:Label ID="FileName" runat="server"></asp:Label>
            <br />
            檔案大小：<asp:Label ID="FileSize" runat="server"></asp:Label>
            <br />
            檔案類型：<asp:Label ID="FileType" runat="server"></asp:Label>
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
