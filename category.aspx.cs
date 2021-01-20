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
using System.Windows.Forms;
using System.Data.SqlClient;
public partial class category : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      Button7.Visible = false;
      Button8.Visible = false;
      Button9.Visible = false;
      Button10.Visible = false;
      Button11.Visible = false;
      Button12.Visible = false;
      Button13.Visible = false;
      Button14.Visible = false;
      Button15.Visible = false;
      Button16.Visible = false;
      Button17.Visible = false;
      Button18.Visible = false;
      Button19.Visible = false;
      Button20.Visible = false;
      Button21.Visible = false;
      Button22.Visible = false;
      Button23.Visible = false;
      Button24.Visible = false;
      Button25.Visible = false;
      Button26.Visible = false;
      Button27.Visible = false;
      Button28.Visible = false;
      Button29.Visible = false;
      Button30.Visible = false;
      Button31.Visible = false;
      Button32.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Button2.Visible = false;
        Button3.Visible = false;
        Button4.Visible = false;
        Button5.Visible = false;
        Button6.Visible = false;

        Button28.Visible = true;
        Button7.Visible = true;
        Button8.Visible = true;
        Button9.Visible = true;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Button1.Visible = false;
        Button3.Visible = false;
        Button4.Visible = false;
        Button5.Visible = false;
        Button6.Visible = false;

        Button29.Visible = true;
        Button10.Visible = true;
        Button11.Visible = true;
        Button12.Visible = true;
        Button13.Visible = true;
        Button14.Visible = true;
        Button15.Visible = true;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Button1.Visible = false;
        Button2.Visible = false;
        Button4.Visible = false;
        Button5.Visible = false;
        Button6.Visible = false;

        Button30.Visible = true;
        Button16.Visible = true;
        Button17.Visible = true;
        Button18.Visible = true;
        Button19.Visible = true;
        Button20.Visible = true;
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Button2.Visible = false;
        Button3.Visible = false;
        Button1.Visible = false;
        Button5.Visible = false;
        Button6.Visible = false;

        Button21.Visible = true;
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Button2.Visible = false;
        Button3.Visible = false;
        Button4.Visible = false;
        Button1.Visible = false;
        Button6.Visible = false;

        Button31.Visible = true;
        Button22.Visible = true;
        Button23.Visible = true;
        Button24.Visible = true;
        Button25.Visible = true;
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Button2.Visible = false;
        Button3.Visible = false;
        Button4.Visible = false;
        Button5.Visible = false;
        Button1.Visible = false;

        Button32.Visible = true;
        Button26.Visible = true;
        Button27.Visible = true;
    }
    protected void Button28_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Curtains.aspx");
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        Session["subcat"] = "Single Rod Curtains";
        Response.Redirect("~/curtainsub.aspx");
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        Session["subcat"] = "Double Rod Curtains";
        Response.Redirect("~/curtainsub.aspx");
    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        Session["subcat"] = "Triple Rod Curtains";
        Response.Redirect("~/curtainsub.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
    }
    protected void Button29_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/blinds.aspx");
    }
    protected void Button10_Click(object sender, EventArgs e)
    {
        Session["subcat"] = "Vertical Blinds";
        Response.Redirect("~/blindsub.aspx");
    }
    protected void Button11_Click(object sender, EventArgs e)
    {
        Session["subcat"] = "Roller Blinds";
        Response.Redirect("~/blindsub.aspx");
    }
    protected void Button12_Click(object sender, EventArgs e)
    {
        Session["subcat"] = "Wood Blinds";
        Response.Redirect("~/blindsub.aspx");
    }
    protected void Button13_Click(object sender, EventArgs e)
    {
        Session["subcat"] = "PVC Blinds";
        Response.Redirect("~/blindsub.aspx");
    }
    protected void Button14_Click(object sender, EventArgs e)
    {
        Session["subcat"] = "Zebra Blinds";
        Response.Redirect("~/blindsub.aspx");
    }
    protected void Button15_Click(object sender, EventArgs e)
    {
        Session["subcat"] = "Roman Blinds";
        Response.Redirect("~/blindsub.aspx");
    }
    protected void Button16_Click(object sender, EventArgs e)
    {
        Session["subcat"] = "Coir Carpet";
        Response.Redirect("~/carpetsub.aspx");
    }
    protected void Button17_Click(object sender, EventArgs e)
    {
        Session["subcat"] = "Non Wooven carpet";
        Response.Redirect("~/carpetsub.aspx");
    }
    protected void Button18_Click(object sender, EventArgs e)
    {
        Session["subcat"] = "Cotton Mat";
        Response.Redirect("~/carpetsub.aspx");
    }
    protected void Button19_Click(object sender, EventArgs e)
    {
        Session["subcat"] = "PVC Mat";
        Response.Redirect("~/carpetsub.aspx");
    }
    protected void Button20_Click(object sender, EventArgs e)
    {
        Session["subcat"] = "Vinyle Carpet";
        Response.Redirect("~/carpetsub.aspx");
    }
    protected void Button30_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/wallpaper.aspx");
    }
    protected void Button22_Click(object sender, EventArgs e)
    {
        Session["subcat"] = "Hanging Lights";
        Response.Redirect("~/lightsub.aspx");
    }
    protected void Button23_Click(object sender, EventArgs e)
    {
        Session["subcat"] = "Wall Lights";
        Response.Redirect("~/lightsub.aspx");
    }
    protected void Button24_Click(object sender, EventArgs e)
    {
        Session["subcat"] = "Surface Lights";
        Response.Redirect("~/lightsub.aspx");
    }
    protected void Button25_Click(object sender, EventArgs e)
    {
        Session["subcat"] = "Gate Lights";
        Response.Redirect("~/lightsub.aspx");
    }
    protected void Button31_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/lights.aspx");
    }
    protected void Button26_Click(object sender, EventArgs e)
    {
        Session["subcat"] = "Vase";
        Response.Redirect("~/decorativesub.aspx");
    }
    protected void Button27_Click(object sender, EventArgs e)
    {
        Session["subcat"] = "Showcase Items";
        Response.Redirect("~/decorativesub.aspx");
    }
    protected void Button32_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/decorative.aspx");
    }
}
