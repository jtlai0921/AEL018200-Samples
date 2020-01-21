using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class prac8 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int Num = 1;
        Increase(ref Num);
        Response.Write("方法執行完畢後原參數值為" + Num + "<br>");
    }

    void Increase(ref int Result)
    {
        Response.Write("方法剛被呼叫時的參數值為" + Result + "<br>");
        Result += 1;
        Response.Write("方法執行完畢後的參數值為" + Result + "<br>");
    }
}