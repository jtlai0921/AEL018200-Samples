using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class prac11 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void GV_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridView1.Visible = false;
        DetailsView1.PageIndex = GridView1.PageIndex * 10 + GridView1.SelectedIndex;       
        DetailsView1.Visible = true;
        DetailsView1.DataBind();
    }

    protected void DV_ItemCommand(object sender, DetailsViewCommandEventArgs e)
    {
        if (e.CommandName == "Return")
        {
            DetailsView1.Visible = false;
            GridView1.Visible = true;
            GridView1.DataBind();
        }
    }

    protected void DV_ItemDeleted(object sender, DetailsViewDeletedEventArgs e)
    {
        DetailsView1.Visible = false;
        GridView1.Visible = true;
        GridView1.DataBind();
    }
}