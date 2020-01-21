<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "Hello World!";
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>我的第一個網頁</title>
</head>
<body>
    <form id="form1" runat="server">        
        <asp:Label ID="Label1" runat="server"></asp:Label> 
    </form>
</body>
</html>
