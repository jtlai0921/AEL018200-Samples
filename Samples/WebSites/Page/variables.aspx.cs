using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class variables : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write("網頁虛擬路徑：" + Request.ServerVariables["Path_Info"] + "<br>");        
        Response.Write("伺服器名稱：" + Request.ServerVariables["Server_Name"] + "<br>");
        Response.Write("伺服器連接埠：" + Request.ServerVariables["Server_Port"] + "<br>");
        Response.Write("伺服器HTTP版本：" + Request.ServerVariables["Server_Protocol"] + "<br>");
        Response.Write("伺服器軟體版本：" + Request.ServerVariables["Server_Software"] + "<br>");
        Response.Write("用戶端資訊：" + Request.ServerVariables["Http_User_Agent"]);
    }
}