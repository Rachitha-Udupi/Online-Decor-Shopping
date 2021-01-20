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

public partial class admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/custinfo.aspx");

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/addcategory.aspx");

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/additem.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {

    }

    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/vieworder.aspx");

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/additem.aspx");

    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
       
        Response.Redirect("~/edititem.aspx");

    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/addcategory.aspx");

    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/editcategory.aspx");
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/addlogistic.aspx");
    }


    protected void LinkButton6_Click1(object sender, EventArgs e)
    {
        Response.Redirect("~/vieworder.aspx");

    }
}
