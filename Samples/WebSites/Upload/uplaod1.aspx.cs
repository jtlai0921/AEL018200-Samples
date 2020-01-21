using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class uplaod1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            FileUpload1.PostedFile.SaveAs(Server.MapPath(@"Files\" + FileUpload1.FileName));
            //顯示上傳結果
            Result.Text = "上傳成功！";
            //顯示檔案資訊
            FileInfo.Visible = true;
            FileName.Text = FileUpload1.FileName;
            FileSize.Text = Math.Round((decimal)FileUpload1.PostedFile.ContentLength / 1024, 2).ToString() + "KB";
            FileType.Text = FileUpload1.PostedFile.ContentType;
        }
        else
        {
            Result.Text = "上傳失敗！";
            FileInfo.Visible = false;
        }

    }
}