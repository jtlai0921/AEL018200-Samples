using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class upload2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int upFileCount = 0;
        string upFileName = null;
        string tmpFileName = null;
        string tmpFileSize = null;
        string tmpFileType = null;

        for (int i = 0; i < Request.Files.Count; i++)
        {
            HttpPostedFile upFile = Request.Files[i];
            if (upFile.FileName != "" & upFile.ContentLength > 0)
            {
                //計算上傳的檔案數目
                upFileCount += 1;
                //取得檔案名稱
                upFileName = upFile.FileName.Substring(upFile.FileName.LastIndexOf(@"\") + 1);
                //儲存檔案
                upFile.SaveAs(Server.MapPath(@"Files\" + upFileName));
                //暫存檔案資訊
                tmpFileName += "【" + upFileName + "】";
                tmpFileSize += "【" + Math.Round((decimal)upFile.ContentLength / 1024, 2) + "KB】";
                tmpFileType += "【" + upFile.ContentType + "】";
            }

            //檢查上傳的檔案數目，若為0，表示上傳失敗或指定的檔案不存在
            if (upFileCount == 0)
            {
                Result.Text = "上傳失敗！";
                FileInfo.Visible = false;
            }
            else
            {
                //顯示上傳結果
                Result.Text = "上傳成功！";
                //顯示檔案相關資訊
                FileInfo.Visible = true;
                FileCount.Text = upFileCount.ToString();
                FileName.Text = tmpFileName;
                FileSize.Text = tmpFileSize;
                FileType.Text = tmpFileType;
            }
        }
    }
}