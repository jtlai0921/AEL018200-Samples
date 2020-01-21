using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class prac2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //由Web.config組態檔取得連接字串
        ConnectionStringSettings setting = ConfigurationManager.ConnectionStrings["GradesConnectionString"];

        //建立DataAdpter物件以執行SQL命令，從「成績單」資料表選取所有欄位
        SqlDataAdapter cmd = new SqlDataAdapter("Select * From 成績單", setting.ConnectionString);

        //建立DataSet物件，然後將執行結果所選取的資料放入DataSet物件
        DataSet ds = new DataSet();
        cmd.Fill(ds, "成績單");

        //宣告myTable變數為DataTable物件，並將DataSet物件中的「成績單」資料表指派給它
        DataTable myTable = ds.Tables["成績單"];

        //使用第一個GridView控制項顯示DataSet物件中的「成績單」資料表
        GridView1.DataSource = myTable;
        GridView1.DataBind();

        //從DataSet物件中的「成績單」資料表選取國文大於90的資料
        DataRow[] myRows = myTable.Select("國文 > 90");
        //使用第二個GridView控制項顯示選取結果
        GridView2.DataSource = myRows.CopyToDataTable();
        GridView2.DataBind();
    }
}