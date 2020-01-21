<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Member_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:LoginName ID="LoginName1" runat="server" FormatString="Hi, {0}, 歡迎來到會員網頁!" />
        <br />
        <br />
        <asp:LoginView ID="LoginView1" runat="server">
            <AnonymousTemplate>
                您尚未登入系統
            </AnonymousTemplate>
            <LoggedInTemplate>
                您已經通過驗證
            </LoggedInTemplate>
        </asp:LoginView>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Member/ChangePwd.aspx">變更密碼</asp:HyperLink>
        <br />
        <br />
        <asp:LoginStatus ID="LoginStatus1" runat="server" LogoutAction="RedirectToLoginPage" />
        </div>
    </form>
</body>
</html>
