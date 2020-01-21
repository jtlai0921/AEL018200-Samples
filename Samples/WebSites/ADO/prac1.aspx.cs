using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class prac1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //建立資料連接
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB; AttachDbFilename=C:\\Users\\Jean\\Documents\\Visual Studio 2015\\Grades.mdf; Integrated Security=True";
        //開啟資料連接
        conn.Open();

        //建立第一個 SqlCommand物件並執行Insert陳述式
        SqlCommand cmd1 = new SqlCommand("Insert Into 成績單 (學號, 姓名, 國文, 數學, 英文) Values ('A11', N'小丸子', 88, 95, 92)", conn);
        cmd1.ExecuteNonQuery();

        //建立第二個 SqlCommand物件並執行Select陳述式，然後將傳回的SqlDataReader物件指派給dr變數
        SqlCommand cmd2 = new SqlCommand("Select * From 成績單", conn);
        SqlDataReader dr = cmd2.ExecuteReader();

        //讀取並顯示資料
        Response.Write("<table border='1'><tr align='center'>");
        for (int i = 0; i < dr.FieldCount; i++)      //讀取並顯示所有欄位名稱
            Response.Write("<td>" + dr.GetName(i) + "</td>");
        Response.Write("</tr>");
        while (dr.Read())
        {
            Response.Write("<tr>");
            for (int i = 0; i < dr.FieldCount; i++)  //讀取並顯示所有欄位內容
                Response.Write("<td>" + dr[i].ToString() + "</td>");
            Response.Write("</tr>");
        }
        Response.Write("</table>");

        //關閉SqlDataReader物件
        dr.Close();
        //關閉資料連接
        conn.Close();
    }    
}