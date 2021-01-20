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
using System.Data.SqlClient;
using System.Windows.Forms;


public partial class address : System.Web.UI.Page
{
    connect c;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        c = new connect();
        Session["deladdress"] = TextBox1.Text;
        Session["delcity"] = TextBox2.Text;
        Session["delpincode"] = TextBox3.Text;
        Session["delstate"] = TextBox4.Text;
        Response.Redirect("~/checkouts.aspx");


    }
}
