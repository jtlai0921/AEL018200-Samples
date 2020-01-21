using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class prac11 : System.Web.UI.Page
{
    static int Result = 0;	//宣告靜態變數Result

    protected void Page_Load(object sender, EventArgs e)
    {
        Add();
        Add();
    }

    void Add()
    {
        Result = Result + 1;                            //將靜態變數Result的值加1
        Response.Write(Result + "<br>");        //顯示靜態變數Result的值
    }
}