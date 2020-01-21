using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class images_Default : System.Web.UI.Page
{
    //當網頁初始化時會執行這個事件程序
    protected void Page_Init(object sender, EventArgs e)
    {
        BindList(1);        //顯示第一頁的留言
        PageListItem();     //建立快速換頁清單
        ShowWhatButton();   //顯示 [首頁]、[上一頁]、[下一頁]、[頁尾] 等按鈕
    }
    
    //這個方法會根據參數指定的頁次顯示留言
    private void BindList(int PageNo)
    { 
        //由Web.config組態檔取得連接字串
        ConnectionStringSettings setting =
          ConfigurationManager.ConnectionStrings["GuestConnectionString"];
        //建立SqlDataAdpter物件以執行SQL命令，從「留言板」資料表選取所有欄位並依照「留言日期」遞減排序
        SqlDataAdapter cmd = new SqlDataAdapter("Select * From 留言板 Order By 留言日期 Desc", setting.ConnectionString);
        //建立DataSet物件，然後呼叫Fill() 將執行結果所選取的資料放入DataSet物件
        DataSet ds = new DataSet();
        cmd.Fill(ds, "留言板");

        //將DataSet物件中的「留言板」資料表指派給myTable變數
        DataTable myTable = ds.Tables["留言板"];
        
        //顯示留言的總筆數 
        TotalRecord.Text = myTable.Rows.Count.ToString();
        //設定每頁顯示五筆留言
        int PageSize = 5;                       
        //顯示留言的總頁數
        TotalPage.Text = Math.Ceiling((double)myTable.Rows.Count / PageSize).ToString();

        //宣告showTable變數，其資料表結構與myTable變數存放的「留言板」資料表相同
        DataTable showTable = myTable.Clone();
        
        //根據參數指定的頁次讀取留言並存放在showTable變數
        for (int i = (PageNo - 1) * PageSize; i < PageNo * PageSize; i++)
        {
            if (i < myTable.Rows.Count)
            {
                DataRow newRow = showTable.NewRow();
                for (int j = 0; j < myTable.Columns.Count; j++)
                    newRow[myTable.Columns[j].ColumnName] = myTable.Rows[i][j];
                showTable.Rows.Add(newRow);
            }
            else
                break;
        }

        //使用DataList控制項顯示showTable變數存放的留言
        DataList1.DataSource = showTable;
        DataList1.DataBind(); 
    }

    //這個方法會建立快速換頁清單
    private void PageListItem()
    {
        PageList.Items.Clear();
        for (int i = 0; i < int.Parse(TotalPage.Text); i++)
            PageList.Items.Add("第 " + (i + 1).ToString() + " 頁");
    }

    //這個方法會根據瀏覽者點取的按鈕決定要顯示哪一頁的留言和相關的按鈕
    protected void PageChange(object sender, CommandEventArgs e)
    {
        switch (e.CommandArgument.ToString())
        {
            case "firstPage":
                PageList.SelectedIndex = 0;
                break;
            case "prePage":
                PageList.SelectedIndex -= 1;
                break;
            case "nextPage":
                PageList.SelectedIndex += 1;
                break;
            case "lastPage":
                PageList.SelectedIndex = int.Parse(TotalPage.Text) - 1;
                break;
        }
        BindList(PageList.SelectedIndex + 1);
        ShowWhatButton();
    }

    //這個方法會判斷是否要顯示 [首頁]、[上一頁]、[下一頁]、[頁尾] 等按鈕
    private void ShowWhatButton()
    {
        //判斷是否要顯示 [頁首]、[上一頁] 按鈕
        if (PageList.SelectedIndex == 0)
        {
            firstButton.Visible = false;
            preButton.Visible = false;
        }
        else
        {
            firstButton.Visible = true;
            preButton.Visible = true;
        }

        //判斷是否要顯示 [下一頁]、[尾頁] 按鈕
        if (PageList.SelectedIndex == PageList.Items.Count - 1)
        {
            nextButton.Visible = false;
            lastButton.Visible = false;
        }
        else
        {
            nextButton.Visible = true;
            lastButton.Visible = true;
        }
    }

    //這個方法會根據瀏覽者在快速換頁清單中選取的頁次顯示留言和相關的按鈕
    protected void PageList_SelectedIndexChanged(object sender, EventArgs e)
    {
        BindList(PageList.SelectedIndex + 1);
        ShowWhatButton();
    } 

}