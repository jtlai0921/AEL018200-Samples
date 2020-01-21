using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class prac1a : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //建立資料連接
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB; AttachDbFilename=C:\\Users\\Jean\\Documents\\Visual Studio 2015\\Grades.mdf; Integrated Security=True";
        //開啟資料連接
        conn.Open();

        //建立SqlCommand物件並指定要傳遞參數給SQL命令
        SqlCommand cmd = new SqlCommand("Select * From 成績單 Where 學號=@學號", conn);
        //將參數設定為使用者在文字方塊內輸入的資料
        cmd.Parameters.Add("@學號", SqlDbType.NVarChar, 50).Value = TextBox1.Text;

        //執行SQL命令並將傳回的SqlDataReader物件指派給dr變數
        SqlDataReader dr = cmd.ExecuteReader();

        //讀取並顯示資料
        if (dr.HasRows)
        {
            GridView1.Visible = true;
            Label1.Visible = false;
            GridView1.DataSource = dr;
            GridView1.DataBind();
        }
        else
        {
            GridView1.Visible = false;
            Label1.Visible = true;
            Label1.Text = "查詢不到資料！";
        }

        //關閉SqlDataReader物件
        dr.Close();
        //關閉資料連接
        conn.Close();
    }
}