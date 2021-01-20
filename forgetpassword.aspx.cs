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
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net; 



public partial class forgetpassword : System.Web.UI.Page
{
    connect c;
    DataTable dt = new DataTable();
    SqlDataAdapter adp = new SqlDataAdapter();
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {

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
            String sqstn = ds.Tables["cust"].Rows[0][12].ToString();
            if (username == TextBox1.Text)
            {
                if (sqstn == TextBox2.Text)
                {
                    Response.Redirect("~/recoverpass.aspx");
                }

                else
                {
                    
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Invalid Answer')</script>");
                   
    }

    }
        }
        catch (Exception )
        {
            throw ;
        }
    }
    

protected void  LinkButton1_Click(object sender, EventArgs e)
{
     String password;
                    String mycon = "Data source=USER-PC;Initial Catalog=bgroup28;Integrated Security=true";
                    String myquery = "Select * from customer where username='" + TextBox1.Text + "' and email='" + TextBox3.Text + "'";
                    SqlConnection con = new SqlConnection(mycon);
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = myquery;
                    cmd.Connection = con;
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.SelectCommand = cmd;
                    ds = new DataSet();
                    da.Fill(ds);
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        //Label3.Text = "Data Found";

                        password = ds.Tables[0].Rows[0]["password"].ToString();
                        sendpassword(password, TextBox3.Text);
                        MessageBox.Show ("Your Password Has Been Sent to Registered Email Address. Check Your Mail Inbox");

                    }
                    else
                    {
                       MessageBox.Show("Your Username is Not Valid or Email Not Registered");

                    }
                    con.Close();

                
                   }
        
    
        private void sendpassword(String password,String email)
    {
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.Port = 587;
        smtp.Credentials = new System.Net.NetworkCredential("Your username", "Your PASSWORD");
        smtp.EnableSsl = true;
        MailMessage msg = new MailMessage();
        msg.Subject = "Forgot Password ( HI DECOR )";
        msg.Body = "Hello " + TextBox1.Text + ", Your Password is  " + password + "\n\n\nThanks & Regards\nHi Decor team";
        string toaddress = TextBox3.Text;
        msg.To.Add(toaddress);
        string fromaddress = "Hi Decor <hidecor@gmail.com>";
        msg.From = new MailAddress(fromaddress);
        try
        {
            smtp.Send(msg);
            Page.RegisterStartupScript("UserMsg", "<script>alert('Successfully Send...')");
            //if(alert){ window.location='SendMail.aspx';}</script>");


        }
        catch(Exception )
        {
            throw;
        }

}
}