<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddRecord.aspx.cs" Inherits="AddRecord" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
          <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Center">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/title.jpg" />
            <br />
            <br />
            <table style="width:800px" align="center">
              <tr style="background-color:#0084ca">
                <td colspan="2" style="color:#ffffff">請在此輸入新留言</td>
              </tr>
              <tr style="background-color:#d9f2ff">
                <td style="width:17%">姓名：</td>
                <td style="width:83%"><asp:TextBox runat="server" ID="Name" Width="500px" /></td>
              </tr>
              <tr style="background-color:#d9f2ff">
                <td>Email：</td>
                <td><asp:TextBox runat="server" ID="Email" Width="500px" /></td>
              </tr>             
              <tr style="background-color:#d9f2ff">
                <td>內容：</td>
                <td><asp:TextBox ID="Content" runat="server" Rows="4" TextMode="Multiline" Width="500px" /></td>
              </tr>
              <tr>
                <td colspan="2" style="background-color:#ffffff; height:40px; text-align:center">
                  <asp:Button ID="AddButton" runat="server" Text="張貼留言" ValidationGroup="VG1" OnClick="AddButton_Click" />
                  <asp:Button ID="ReturnButton" runat="server" PostBackUrl="Default.aspx" Text="回留言板" /></td>  
             </tr>
           </table>
              <br />
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Name" ErrorMessage="[姓名] 欄位不可空白" Display="None" ValidationGroup="VG1"></asp:RequiredFieldValidator>
              <br />
              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Email" Display="None" ErrorMessage="[Email ] 欄位不可空白" ValidationGroup="VG1"></asp:RequiredFieldValidator>
              <br />
              <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Content" Display="None" ErrorMessage="[內容] 欄位不可空白" ValidationGroup="VG1"></asp:RequiredFieldValidator>

              <br />
              <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="資料輸入錯誤" ShowMessageBox="True" ShowSummary="False" ValidationGroup="VG1" />
              <br />
        </asp:Panel> 
    
    </div>
    </form>
</body>
</html>
