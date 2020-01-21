using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class prac3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //由Web.config組態檔取得連接字串
        ConnectionStringSettings setting = ConfigurationManager.ConnectionStrings["GradesConnectionString"];

        //建立SqlDataAdpter物件以執行SQL命令，從「成績單」資料表選取所有欄位
        SqlDataAdapter cmd = new SqlDataAdapter("Select * From 成績單", setting.ConnectionString);

        //建立DataSet物件，然後呼叫Fill() 將執行結果所選取的資料放入DataSet物件
        DataSet ds = new DataSet();
        cmd.Fill(ds, "成績單");

        //將DataSet物件中的「成績單」資料表指派給myTable變數
        DataTable myTable = ds.Tables["成績單"];

        //使用LINQ查詢「國文」欄位大於80的資料
        EnumerableRowCollection<DataRow> students = myTable.AsEnumerable();
        var result = from n in students where n.Field<int>("國文") > 80 select n;

        //使用第一個GridView控制項顯示LINQ查詢的結果
        GridView1.DataSource = result.AsDataView();
        GridView1.DataBind();
    }
}