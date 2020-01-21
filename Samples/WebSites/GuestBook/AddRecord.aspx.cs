using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class AddRecord : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //此敘述是為了避免在網頁執行時產生類似 "WebForms UnobtrusiveValidationMode需要 'jquery'..." 的訊息
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    }

    protected void AddButton_Click(object sender, EventArgs e)
    {
        //由Web.config組態檔取得連接字串
        ConnectionStringSettings setting =
          ConfigurationManager.ConnectionStrings["GuestConnectionString"];

        //建立資料連接
        SqlConnection objConn = new SqlConnection(setting.ConnectionString);
        objConn.Open();

        string strSQL = "Insert Into 留言板(留言者, 電子郵件, 留言內容, 留言日期) Values (@Name, @Email, @Content, @InsertDate)";

        SqlCommand objCmd = new SqlCommand(strSQL, objConn);
        objCmd.Parameters.Add("Name", SqlDbType.NText, 10).Value = Name.Text.Trim();
        objCmd.Parameters.Add("Email", SqlDbType.NText, 50).Value = Email.Text.Trim();        
        objCmd.Parameters.Add("Content", SqlDbType.NText, 5000).Value = Content.Text.Trim();        
        objCmd.Parameters.Add("InsertDate", SqlDbType.DateTime).Value = DateTime.Now;

        objCmd.ExecuteNonQuery();
        objConn.Close();
        Response.Redirect("Default.aspx");
    }
}