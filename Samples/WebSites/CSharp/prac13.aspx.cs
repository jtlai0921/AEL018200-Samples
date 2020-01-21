using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class prac13 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int X = 100, Y = 0, Z = 0;
        try                                          //結構化例外處理的開頭
        {
            Z = X / Y;                               //Y為0將導致此敘述發生錯誤
        }
        catch (DivideByZeroException e1)             //捕捉DivideByZeroException例外
        {
            Response.Write("捕捉到DivideByZeroException例外，錯誤訊息為" + e1.Message + "<br>");
            try                                      //巢狀結構化例外處理的開頭
            {
                throw new ArgumentNullException();   //自行擲出ArgumentNullException例外
            }
            catch (Exception e3)                     //捕捉自行擲出的例外
            {
                Response.Write("自行擲出的例外錯誤訊息為" + e3.Message + "<br>");
            }                                        //巢狀結構化例外處理的結尾
        }
        catch (Exception e2)                         //捕捉其它例外
        {
            Response.Write("捕捉到其它例外，錯誤訊息為" + e2.Message + "<br>");
        }
        finally                                      //finally區塊的程式碼一定會執行
        {
            Response.Write("Z的值為" + Z + "<br>");
        }                                            //結構化例外處理的結尾
    }
}