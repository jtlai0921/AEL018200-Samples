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
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AddressConnectionString %>" SelectCommand="SELECT * FROM [通訊錄]"></asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="編號" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="編號" HeaderText="編號" ReadOnly="True" SortExpression="編號" />
                <asp:BoundField DataField="姓名" HeaderText="姓名" SortExpression="姓名" />
                <asp:BoundField DataField="電話" HeaderText="電話" SortExpression="電話" />
                <asp:ImageField HeaderText="照片" DataImageUrlField="照片">
                </asp:ImageField>
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
