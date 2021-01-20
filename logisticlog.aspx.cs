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



public partial class logisticlog : System.Web.UI.Page
{
    connect c;
    SqlDataAdapter adp = new SqlDataAdapter();
    SqlDataAdapter adp1 = new SqlDataAdapter();
    DataSet ds;
    DataTable dt = new DataTable();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            String password = pass.Text;

            pass.Attributes.Add("value", password);


        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        c = new connect();
        if ((TextBox3.Text == "") && (pass.Text == ""))
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Enter Both the field')</script>");

        }
        else
            if (TextBox3.Text == "")
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Please enter your username')</script>");

            }

            else if (pass.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('enter your password')</script>");

        }
        else
        {
            c.cmd.CommandText = "select * from logistic where username='" + TextBox3.Text + "'";
            ds = new DataSet();
            adp.SelectCommand = c.cmd;
            adp.Fill(ds, "logi");
            adp1.SelectCommand = c.cmd;
            adp1.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Session["username"] = Convert.ToString(dt.Rows[0].ItemArray[0]);
                Session["password"] = Convert.ToString(dt.Rows[0].ItemArray[1]);
                if ((ds.Tables["logi"].Rows[0].ItemArray[1].ToString() == TextBox3.Text) && (ds.Tables["logi"].Rows[0].ItemArray[2].ToString() == pass.Text))
                {


                    MessageBox.Show("Welcome " + ds.Tables["logi"].Rows[0].ItemArray[0]);
                    Response.Redirect("~/logisticpage.aspx");
                }

                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert(' Invalid username or Password')</script>");
                    // MessageBox.Show("Invalid Username or Password");
                }

            }
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

    protected void pass_TextChanged(object sender, EventArgs e)
    {

    }
}
