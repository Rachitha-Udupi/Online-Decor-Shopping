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


public partial class feedback : System.Web.UI.Page
{
    connect c;
    SqlDataAdapter adp = new SqlDataAdapter();
    DataSet ds;
    DataTable dt;


    protected void Page_Load(object sender, EventArgs e)
    {
        c = new connect();
        DataTable dt = new DataTable();
        SqlDataReader myreader = null;
        c.cmd.CommandText="select * from customer where cust_id='"+Session["cust_id"]+"'";
        adp.SelectCommand = c.cmd;
        adp.Fill(dt);
        myreader = c.cmd.ExecuteReader();
        while (myreader.Read())
        {
            TextBox1.Text = (myreader["username"].ToString());
            TextBox2.Text = (myreader["email"].ToString());
            
        }
        myreader.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        c = new connect();
        c.cmd.CommandText = "insert into feedback values(@username,@email,@feedback)";
        c.cmd.Parameters.Add("@username", SqlDbType.NVarChar).Value = TextBox1.Text;
        c.cmd.Parameters.Add("@email", SqlDbType.NVarChar).Value = TextBox2.Text;
        c.cmd.Parameters.Add("@feedback", SqlDbType.NVarChar).Value = TextBox3.Text;
        c.cmd.ExecuteNonQuery();
    }
}
