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

public partial class registration : System.Web.UI.Page
{
    connect c;
    //DataSet ds;
    SqlDataAdapter adp = new SqlDataAdapter();
    DataTable dt = new DataTable();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            String password = TextBox2.Text;
            String cpassword = TextBox5.Text;
            TextBox2.Attributes.Add("value", password);

            TextBox5.Attributes.Add("value", cpassword);
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        try
        {
            c = new connect();
            c.cmd.CommandText = "select * from customer where username='" + TextBox3.Text + "' or email='" + TextBox6.Text + "'";
            adp.SelectCommand = c.cmd;
            dt.Clear();
            adp.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                if ((TextBox3.Text == dt.Rows[0].ItemArray[3].ToString()) && (TextBox6.Text == dt.Rows[0].ItemArray[6].ToString()))
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('Both username and email exist')</script>");
                    //  MessageBox.Show("Both Username and email exist");
                }
                else if (TextBox3.Text == dt.Rows[0].ItemArray[3].ToString())
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('username already exists')</script>");
                //MessageBox.Show("Username already exist");
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('This email address is already registered')</script>");
                    //MessageBox.Show("This email address is already registered");
                }

            }

          


        // c.cmd.CommandText = "SELECT cust_id FROM customer";
           MessageBox.Show("WELCOME");
           int count;
            //string st=null 
           c.cmd.CommandText = "select count(*) from customer";
           count = Convert.ToInt16(c.cmd.ExecuteScalar()) + 1;
           // c.cmd.CommandText = "insert into customer(cust_id,cust_fname,cust_lname,username,gender,contact,email,password,confirmpassword,address)";

            c.cmd.CommandText = "insert into customer values(@cust_id,@cust_fname,@cust_lname,@username,@gender,@contact,@email,@password,@address,@city,@state,@pincode,@squestion)";
            c.cmd.Parameters.Clear();
            c.cmd.Parameters.Add("@cust_id", SqlDbType.NVarChar).Value = count;
            c.cmd.Parameters.Add("@cust_fname", SqlDbType.NVarChar).Value = TextBox8.Text;
            c.cmd.Parameters.Add("@cust_lname", SqlDbType.NVarChar).Value = TextBox7.Text;
            c.cmd.Parameters.Add("@username", SqlDbType.NVarChar).Value = TextBox3.Text;
            c.cmd.Parameters.Add("@gender", SqlDbType.NVarChar).Value = (String)Session["s"];
            c.cmd.Parameters.Add("@contact", SqlDbType.BigInt ).Value = Convert .ToInt64 (TextBox9.Text);
            c.cmd.Parameters.Add("@email", SqlDbType.NVarChar).Value = TextBox6.Text;
            c.cmd.Parameters.Add("@password", SqlDbType.NVarChar).Value = TextBox2.Text;
           // c.cmd.Parameters.Add("@confirmpassword", SqlDbType.NVarChar).Value = TextBox5.Text;
            c.cmd.Parameters.Add("@address", SqlDbType.NVarChar).Value = TextBox4.Text;
            c.cmd.Parameters.Add("@city", SqlDbType.NVarChar).Value = TextBox10.Text;
            c.cmd.Parameters.Add("@State", SqlDbType.NVarChar).Value = TextBox11.Text;
            c.cmd.Parameters.Add("@pincode", SqlDbType.BigInt).Value = Convert.ToInt64 (TextBox12.Text);
            c.cmd.Parameters.Add("@squestion", SqlDbType.NVarChar).Value = TextBox13.Text;
           // c.cmd.Parameters.Add("@status", SqlDbType.NVarChar).Value = 

            
            c.cmd.ExecuteNonQuery();
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Registerd Successfully')</script>");
             Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Registered')</script>");

            TextBox1.Text = "";
            TextBox8.Text = "";
            TextBox7.Text = "";
            TextBox3.Text = "";
            TextBox9.Text = "";
            TextBox6.Text = "";
            TextBox2.Text = "";
            TextBox5.Text = "";
            TextBox4.Text = "";
            TextBox10.Text = "";
            TextBox11.Text = "";
            TextBox12.Text = "";
            TextBox13.Text = "";
            RadioButton1.Checked = false;
            RadioButton2.Checked = false;
            Response.Redirect("~/registration.aspx");
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            c.cnn.Close();
        }


   
    
    }
    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {
        Session["s"] = ((System.Web.UI.WebControls.RadioButton)sender).Text;
    }
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
        Session["s"] = ((System.Web.UI.WebControls.RadioButton)sender).Text;
    }

    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        if (CheckBox1.Checked == false)
        {
            TextBox2.TextMode = TextBoxMode.Password;
        }
        if (CheckBox1.Checked == true)
        {
            TextBox2.TextMode = TextBoxMode.SingleLine;
        }

    }
    protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
    {
        if (CheckBox2.Checked == false)
        {
            TextBox5.TextMode = TextBoxMode.Password;
        }
        if (CheckBox2.Checked == true)
        {
            TextBox5.TextMode = TextBoxMode.SingleLine;
        }


    }
}
