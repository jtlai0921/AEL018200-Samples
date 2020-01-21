using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class prac7 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        double DegreeC = 25;                        //宣告變數的初始值為攝氏25度
        double DegreeF = ConvertToF(DegreeC);       //呼叫方法將攝氏溫度轉換成華氏溫度
        Response.Write("攝氏" + DegreeC + "度等於華氏" + DegreeF + "度");
    }

    double ConvertToF(double C)                     //宣告將攝氏溫度轉換成華氏溫度的方法
    {
        return C * 1.8 + 32;
    }
}