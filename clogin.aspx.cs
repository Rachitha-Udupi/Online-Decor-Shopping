

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



public partial class clogin : System.Web.UI.Page
{
    connect c;
    SqlDataAdapter adp = new SqlDataAdapter();
    SqlDataAdapter adp1 = new SqlDataAdapter();

    DataSet ds;
    DataTable dt = new DataTable();

    protected void Page_Load(object sender, EventArgs e)
    {


    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        c = new connect();
        if ((TextBox3.Text == "") && (password.Text == ""))
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>message('Enter Both the field')</script>");

        }
        else if (TextBox3.Text == "")
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Please enter your username')</script>");

            }
            else if (password.Text == "")
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('enter your password')</script>");

                }
                else
                {
                    c.cmd.CommandText = "select * from customer where username='" + TextBox3.Text + "'";
                    ds = new DataSet();
                    adp.SelectCommand = c.cmd;
                    adp.Fill(ds, "cust");
                    adp1.SelectCommand = c.cmd;
                    adp1.Fill(dt);
                    if (dt.Rows.Count > 0)
                    {
                        Session["cust_id"] = Convert.ToString(dt.Rows[0].ItemArray[0]);
                        Session["cust_fname"] = Convert.ToString(dt.Rows[0].ItemArray[1]);
                        if ((ds.Tables["cust"].Rows[0].ItemArray[3].ToString() == TextBox3.Text) && (ds.Tables["cust"].Rows[0].ItemArray[7].ToString() == password.Text))
                        {

                            c.cmd.CommandText = "update customer set status=@status where cust_id='" + Session["cust_id"] + "'";
                            string st="Active";

                            c.cmd.Parameters.AddWithValue("@status", st);
                            Session["status"] = st;
                            MessageBox.Show("Welcome " + ds.Tables["cust"].Rows[0].ItemArray[1]);
                            Response.Redirect("~/category.aspx");
                            // Response.Redirect("~/Home.aspx");
                        }
                        else
                        {
                            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert(' Invalid username or Password')</script>");
                            // MessageBox.Show("Invalid Username or Password");
                        }
                        
                    }
                }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}

