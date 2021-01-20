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
public partial class adminlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            String password = TextBox3.Text;
          
            TextBox3.Attributes.Add("value", password);

        }
    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        if (CheckBox1.Checked == false)
        {
            pass.TextMode = TextBoxMode.Password;
        }
        if (CheckBox1.Checked == true)
        {
            pass.TextMode = TextBoxMode.SingleLine;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox3.Text == "administrator" && pass.Text == "admin1234")
        {
            Session["admin"] = "admin";
            Response.Redirect("~/admin.aspx");
        }
        else if(TextBox3.Text == "" && pass.Text == "")
        {
            MessageBox.Show("Please enter username and password");
        }
            else if(TextBox3.Text == "" && pass.Text == "admin1234")
            {
                MessageBox.Show("USERNAME!!!");
            }
            else if (TextBox3.Text == "administrator" && pass.Text == "")
            {
                MessageBox.Show("PASSWORD!!!");
            }
        else if(TextBox3.Text != "administrator" && pass.Text == "admin1234")
        {
            MessageBox.Show("Invalid username!!");
        }
        else if (TextBox3.Text == "administrator" && pass.Text != "admin1234")
        {
            MessageBox.Show("Invalid password!!");
        }

        else
        {
            MessageBox.Show("Invalid username and password");
        }

    }
}
