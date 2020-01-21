using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class prac1b : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //建立資料連接
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB; AttachDbFilename=C:\\Users\\Jean\\Documents\\Visual Stdio 2015\\Grades.mdf; Integrated Security=True";
        //開啟資料連接
        conn.Open();

        //建立SqlCommand物件並指定要傳遞參數給SQL命令
        SqlCommand cmd = new SqlCommand("Insert Into 成績單 (學號, 姓名, 國文, 數學, 英文) Values(@學號, @姓名, @國文, @數學, @英文)", conn);
        //將參數設定為使用者在文字方塊內輸入的資料
        cmd.Parameters.Add("@學號", SqlDbType.NVarChar, 50).Value = TextBox1.Text;
        cmd.Parameters.Add("@姓名", SqlDbType.NVarChar, 50).Value = TextBox2.Text;
        cmd.Parameters.Add("@國文", SqlDbType.Int).Value = TextBox3.Text;
        cmd.Parameters.Add("@數學", SqlDbType.Int).Value = TextBox4.Text;
        cmd.Parameters.Add("@英文", SqlDbType.Int).Value = TextBox5.Text;

        //執行SQL命令
        cmd.ExecuteNonQuery();        
        
        //關閉資料連接
        conn.Close();
    }
}