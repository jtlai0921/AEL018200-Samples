<%@ Page Language="C#" AutoEventWireup="true" CodeFile="prac10.aspx.cs" Inherits="prac10" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PriceConnectionString %>" DeleteCommand="DELETE FROM [零組件報價表] WHERE [編號] = @編號" InsertCommand="INSERT INTO [零組件報價表] ([零組件種類], [廠牌], [規格], [價格]) VALUES (@零組件種類, @廠牌, @規格, @價格)" SelectCommand="SELECT [編號], [零組件種類], [廠牌], [規格], [價格] FROM [零組件報價表]" UpdateCommand="UPDATE [零組件報價表] SET [零組件種類] = @零組件種類, [廠牌] = @廠牌, [規格] = @規格, [價格] = @價格 WHERE [編號] = @編號">
            <DeleteParameters>
                <asp:Parameter Name="編號" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="零組件種類" Type="String" />
                <asp:Parameter Name="廠牌" Type="String" />
                <asp:Parameter Name="規格" Type="String" />
                <asp:Parameter Name="價格" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="零組件種類" Type="String" />
                <asp:Parameter Name="廠牌" Type="String" />
                <asp:Parameter Name="規格" Type="String" />
                <asp:Parameter Name="價格" Type="Int32" />
                <asp:Parameter Name="編號" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="編號" DataSourceID="SqlDataSource1" Height="50px" style="margin-right: 0px" Width="394px">
            <Fields>
                <asp:BoundField DataField="編號" HeaderText="編號" InsertVisible="False" ReadOnly="True" SortExpression="編號" />
                <asp:BoundField DataField="零組件種類" HeaderText="零組件種類" SortExpression="零組件種類" />
                <asp:BoundField DataField="廠牌" HeaderText="廠牌" SortExpression="廠牌" />
                <asp:BoundField DataField="規格" HeaderText="規格" SortExpression="規格" />
                <asp:BoundField DataField="價格" HeaderText="價格" SortExpression="價格" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
            <PagerSettings Mode="NextPreviousFirstLast" />
        </asp:DetailsView>
    
    </div>
    </form>
</body>
</html>
