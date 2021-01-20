using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class placeorder : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Button1.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        Response.Redirect("~/checkout.aspx");
        
    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        //Button1.Visible = true;
    }
}
