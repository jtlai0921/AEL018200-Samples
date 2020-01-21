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
        //建立資料連接
        SqlConnection conn = new SqlConnection(setting.ConnectionString);
        //建立DataAdpter物件以執行SQL命令，從「成績單」資料表選取所有欄位
        SqlDataAdapter cmd = new SqlDataAdapter("Select * From 成績單", conn);

        //設定InsertCommand屬性及要傳遞給SQL命令的參數
        cmd.InsertCommand = new SqlCommand("Insert Into 成績單 (學號, 姓名, 國文, 數學, 英文) Values(@學號, @姓名, @國文, @數學, @英文)", conn);        
        cmd.InsertCommand.Parameters.Add("@學號", SqlDbType.NVarChar, 50, "學號");
        cmd.InsertCommand.Parameters.Add("@姓名", SqlDbType.NVarChar, 50, "姓名");
        cmd.InsertCommand.Parameters.Add("@國文", SqlDbType.Int, 0, "國文");
        cmd.InsertCommand.Parameters.Add("@數學", SqlDbType.Int, 0, "數學");
        cmd.InsertCommand.Parameters.Add("@英文", SqlDbType.Int, 0, "英文");
        
        //設定UpdateCommand屬性及要傳遞給SQL命令的參數
        cmd.UpdateCommand = new SqlCommand("Update 成績單 Set 姓名=@姓名, 國文=@國文, 數學=@數學, 英文=@英文 Where 學號=@學號", conn);        
        cmd.UpdateCommand.Parameters.Add("@學號", SqlDbType.NVarChar, 50, "學號");
        cmd.UpdateCommand.Parameters.Add("@姓名", SqlDbType.NVarChar, 50, "姓名");
        cmd.UpdateCommand.Parameters.Add("@國文", SqlDbType.Int, 0, "國文");
        cmd.UpdateCommand.Parameters.Add("@數學", SqlDbType.Int, 0, "數學");
        cmd.UpdateCommand.Parameters.Add("@英文", SqlDbType.Int, 0, "英文");

        //設定DeleteCommand屬性及要傳遞給SQL命令的參數
        cmd.DeleteCommand = new SqlCommand("Delete From 成績單 Where 學號=@學號", conn);
        cmd.DeleteCommand.Parameters.Add("@學號", SqlDbType.NVarChar, 50, "學號");

        //建立DataSet物件，然後將呼叫Fill() 方法執行結果所選取的資料放入DataSet物件
        DataSet ds = new DataSet();
        cmd.Fill(ds, "成績單");

        //將DataSet物件中的「成績單」資料表指派給myTable變數
        DataTable myTable = ds.Tables["成績單"];

        //新增一筆資料 ('A11', '小丸子', 88, 95, 92)
        DataRow myRow = myTable.NewRow();
        myRow["學號"] = "A11";
        myRow["姓名"] = "小丸子";
        myRow["國文"] = 88;
        myRow["數學"] = 95;
        myRow["英文"] = 92;
        myTable.Rows.Add(myRow);

        //將第1筆資料的「國文」欄位更新為80
        myTable.Rows[0]["國文"] = 80;

        //刪除第10筆資料
        myTable.Rows[9].Delete();

        //呼叫Update() 方法將DataSet物件中的資料更新回資料來源
        cmd.Update(ds, "成績單");
    }
}