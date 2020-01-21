using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class prac4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int Number = 3;
        switch (Number)
        {
            case 1:         //當變數Number等於1時
                Response.Write(Number + "的英文為" + "ONE");
                break;
            case 2:         //當變數Number等於2時
                Response.Write(Number + "的英文為" + "TWO");
                break;
            case 3:         //當變數Number等於3時
                Response.Write(Number + "的英文為" + "THREE");
                break;
            case 4:         //當變數Number等於4時
                Response.Write(Number + "的英文為" + "FOUR");
                break;
            case 5:         //當變數Number等於5時
                Response.Write(Number + "的英文為" + "FIVE");
                break;
            default:        //當變數Number為1-5以外的數字時
                Response.Write("您輸入的數字超過範圍！");
                break;
        }
    }
}