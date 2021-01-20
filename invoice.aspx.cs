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
using System.Data .SqlClient ;
using System.Windows .Forms ;


public partial class invoice : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox3.Visible = false;
        if (TextBox4.Text != "")
        {
            Button1.Visible = false;
        }
        TextBox1.Text = Session["grandtotal"];

        int n = TextBox1.Text * 0.1;
        TextBox2.Text = n;
        TextBox4.Text = Convert.ToInt16(TextBox1.Text) + Convert.ToInt16(TextBox2.Text);
        int tot=TextBox4.Text ;
        if (TextBox4.Text > 3000)
        {
            TextBox3.Visible = true;
            TextBox3.Text = tot * 0.2;
            TextBox4.Text = tot + Convert.ToInt16(TextBox3.Text);
        }
        else
        {

            MessageBox.Show("NO Discount");
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        MessageBox.Show("Order Successfull");
        Response.Redirect("");
    }
}
