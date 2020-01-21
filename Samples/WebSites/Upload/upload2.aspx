<%@ Page Language="C#" AutoEventWireup="true" CodeFile="upload2.aspx.cs" Inherits="upload2" %>

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
        <asp:FileUpload ID="FileUpload2" runat="server" />
        <br />
        <asp:FileUpload ID="FileUpload3" runat="server" />    
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="上傳" OnClick="Button1_Click" />
        <br />
        <br />
        <asp:Label ID="Result" runat="server"></asp:Label>
    
        <br />
        <asp:Panel ID="FileInfo" runat="server" Visible="False">
            檔案數目：<asp:Label ID="FileCount" runat="server"></asp:Label>
            <br />
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
