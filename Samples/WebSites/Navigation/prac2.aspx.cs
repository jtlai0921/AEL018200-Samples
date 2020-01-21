using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class prac2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ShowMsg(object sender, EventArgs e)
    {
        if (TreeView1.CheckedNodes.Count > 0)
        {
            string SelectedText = "您選擇的食物有：";
            foreach (TreeNode node in TreeView1.CheckedNodes)
                SelectedText += node.Text + "  ";
            Label1.Text = SelectedText;
        }
        else
            Label1.Text = "您沒有選擇任何食物";
    }


   
}