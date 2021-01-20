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

public partial class item : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

   
  
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        string name = ((System.Web.UI.WebControls.Button)e.Item.FindControl("Button1")).Text;
        Session["cat"] = name;
        if (name =="Curtains")
        {
            Response .Redirect ("~/Curtains.aspx");
        }
        else if (name == "Blinds")
        {
            Response.Redirect("~/blinds.aspx");
        }
        else if(name =="Decorative items")
        {
            Response .Redirect ("~/decorative.aspx");
        }
        else   if (name == "Lights")
        {
            Response.Redirect("~/lights.aspx");
        }
        else  if (name == "Carpets")
        {
            Response.Redirect("~/carpets.aspx");
        }
        else   if (name == "Wallpaper")
        {
            Response.Redirect("~/wallpaper.aspx");
        }
    }


   
}
