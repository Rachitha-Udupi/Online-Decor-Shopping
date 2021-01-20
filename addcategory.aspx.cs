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


public partial class addcategory : System.Web.UI.Page
{
    connect c;
    DataSet ds;
    SqlDataAdapter adp1 = new SqlDataAdapter();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("~/adminlogin.aspx");
        }
        //try
        //{
        //    c = new connect();
        //    int count;
        //    c.cmd.CommandText = "select count (*) from category";
        //    count = Convert.ToInt16(c.cmd.ExecuteScalar()) + 1;
        //    TextBox1.Text = count.ToString();
        //    // TextBox1.Enabled = false;
        //}
        //catch (Exception)
        //{
        //    throw;
        //}
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            c = new connect();
            c.cmd.CommandText = "select * from category where category_id='" + TextBox1.Text + "' and category_name='" + TextBox2.Text + "' and subcategory='" + TextBox3.Text + "'";
            ds = new DataSet();
            adp1.SelectCommand = c.cmd;
            adp1.Fill(ds, "category");
            adp1.Fill(dt);
            if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "")
            {
              //  MessageBox.Show("Please enter all fields");
                Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Please enter all fields')</script>");
            }
            else if (dt.Rows.Count > 0)
            {
                if ((ds.Tables["category"].Rows[0].ItemArray[0].ToString() == TextBox1.Text) && (ds.Tables["category"].Rows[0].ItemArray[1].ToString() == TextBox2.Text) && (ds.Tables["category"].Rows[0].ItemArray[2].ToString() == TextBox3.Text))
                {
                    // MessageBox.Show("Already exists");
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Already exists')</script>");
                }
            }
            else
            {
                c = new connect();
                c.cmd.CommandText = "insert into category values(@category_id,@category_name,@subcategory)";
                c.cmd.Parameters.Add("@category_id", SqlDbType.Int).Value = Convert.ToInt16(TextBox1.Text);
                c.cmd.Parameters.Add("@category_name", SqlDbType.NVarChar).Value = TextBox2.Text;
                c.cmd.Parameters.Add("@subcategory", SqlDbType.NVarChar).Value = TextBox3.Text;
                c.cmd.ExecuteNonQuery();
                Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Category added')</script>");

            }
        }
        catch (Exception)
        {
            throw;
        }

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/categorydetail.aspx");

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/admin.aspx");
    }
}
