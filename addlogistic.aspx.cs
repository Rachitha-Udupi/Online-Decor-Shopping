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

public partial class addlogistic : System.Web.UI.Page
{
    connect c;
    protected void Page_Load(object sender, EventArgs e)
    {
        c=new connect();
        int count,count1,count2;
        if (DropDownList1.Text == "UDUPI")
        {
            c.cmd.CommandText = "select count(*) from logistic";
            count = Convert.ToInt16(c.cmd.ExecuteScalar()) + 1;
            TextBox1.Text = 'U' + count.ToString();
        }
        else if (DropDownList1.Text == "MANGALORE")
        {
            c.cmd.CommandText = "select count(*) from logistic";
            count1 = Convert.ToInt16(c.cmd.ExecuteScalar()) + 1;
            TextBox1.Text = 'M' + count1.ToString();
        }
        else
        {
            c.cmd.CommandText = "select count(*) from logistic";
            count2 = Convert.ToInt16(c.cmd.ExecuteScalar()) + 1;
            TextBox1.Text = 'K' + count2.ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        { 
           c=new connect();
            c.cmd.CommandText="insert into logistic values(@log_id,@username,@place,@password)";
            c.cmd.Parameters.Add("@log_id",SqlDbType.Int).Value=TextBox1.Text;
            c.cmd.Parameters.Add("@username",SqlDbType.Int).Value=TextBox2.Text;
            c.cmd.Parameters.Add("@place",SqlDbType.Int).Value=DropDownList1.Text;
            c.cmd.Parameters.Add("@password",SqlDbType.Int).Value=TextBox3.Text;
            MessageBox.Show("Inserted");
            c.cmd.ExecuteNonQuery();
        }
        catch(Exception )
        {
            throw;
        }

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/admin.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/logisticdetail.aspx");

    }
}

