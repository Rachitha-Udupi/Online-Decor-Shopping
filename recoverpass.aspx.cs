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


public partial class recoverpass : System.Web.UI.Page
{
    connect c;
    SqlDataAdapter adp = new SqlDataAdapter();
  
    //DataSet ds;
    DataTable dt = new DataTable();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            String Password = TextBox3.Text;
            String Cpassword = TextBox4.Text;
            TextBox3.Attributes.Add("value", Password);
            TextBox4.Attributes.Add("value", Cpassword);

        }
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        try
        {
            c = new connect();
            c.cmd.CommandText = "select * from customer where username='" + TextBox1.Text + "'";

            adp.SelectCommand = c.cmd;
            DataSet ds = new DataSet();
            adp.Fill(ds, "cust");
            String username = ds.Tables["cust"].Rows[0][3].ToString();
         
        
            
                if (TextBox3.Text == TextBox4.Text)
                {
                    c.cmd.CommandText = "update customer set password='" + TextBox3.Text + "' where username='" + TextBox1.Text + "'";

                    int queryStatus = c.cmd.ExecuteNonQuery();
                    if (queryStatus > 0)
                    {
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Password Update sucessfully')</script>");
                    }
                    else
                    {
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Execution error')</script>");
                    }
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Password is not matching')</script>");
                }
            }
           
        


        catch (Exception)
        {
            throw;
        }
        finally
        {
            c.cnn.Close();
        }
    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        if (CheckBox1.Checked == false)
        {
            TextBox3.TextMode = TextBoxMode.Password;
        }
        if (CheckBox1.Checked == true)
        {
            TextBox3.TextMode = TextBoxMode.SingleLine;
        }


    }
    protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
    {
        if (CheckBox2.Checked == false)
        {
            TextBox4.TextMode = TextBoxMode.Password;
        }
        if (CheckBox2.Checked == true)
        {
            TextBox4.TextMode = TextBoxMode.SingleLine;
        }



    }
}
