<%@ Page Language="C#" AutoEventWireup="true" CodeFile="prac9.aspx.cs" Inherits="prac9" %>

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
                <asp:TemplateField HeaderText="照片">
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("照片", "{0}") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
