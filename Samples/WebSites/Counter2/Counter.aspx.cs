using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Counter : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        System.IO.StreamReader objReader = new System.IO.StreamReader(Page.MapPath("Counter.txt"));
        int Counter = System.Convert.ToInt32(objReader.ReadLine());
        objReader.Close();
        if (Session.IsNewSession == true)
        {           
            Session["Visited"] =  Counter++;
            System.IO.StreamWriter objWriter = new System.IO.StreamWriter(Page.MapPath("Counter.txt"));
            objWriter.WriteLine(Counter);
            objWriter.Close();
        }
        Response.Write("您是本網站的第" + Session["Visited"] + "位訪客");
    }
}