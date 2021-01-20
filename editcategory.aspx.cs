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


public partial class editcategory : System.Web.UI.Page
{
    connect c;
    DataSet ds;
    SqlDataAdapter adp = new SqlDataAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
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
            c.cmd.CommandText = "insert into category values(@category_id,@category_name)";
            c.cmd.Parameters.Add("@category_id", SqlDbType.NVarChar).Value = Convert.ToInt16(TextBox1.Text);
            c.cmd.Parameters.Add("@category_name", SqlDbType.NVarChar).Value = TextBox2.Text;
            Session["cat"] = TextBox2.Text;
            c.cmd.ExecuteNonQuery();
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Category updated')</script>");
            TextBox1.Text = "";
            TextBox2.Text = "";


        }
        catch (Exception)
        {
            throw;
        }

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            c = new connect();
            c.cmd.CommandText = "delete from  category where category_name='" + TextBox2.Text + "'";
            c.cmd.Parameters.Add("@category_id", SqlDbType.NVarChar).Value = Convert.ToInt16(TextBox1.Text);
            c.cmd.Parameters.Add("@category_name", SqlDbType.NVarChar).Value = TextBox2.Text;
            Session["cat"] = TextBox2.Text;
            c.cmd.ExecuteNonQuery();
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Category deleted')</script>");
            TextBox1.Text = "";
            TextBox2.Text = "";


        }
        catch (Exception)
        {
            throw;
        }

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        //c= new connect ();
        //c.cmd .CommandText ="select 
        //TextBox1 .Text =
        //try
        //{
        //    c = new connect();
        //    ds = new DataSet();
        //    c.cmd.CommandText = "select category_id,category_name from category where category_name='" + DropDownList1.SelectedItem.Text + "'";
        //    adp.SelectCommand = c.cmd;
        //    adp.Fill(ds, "category");

        //    //DropDownList3 .SelectedItem .Text  = Convert.ToString(ds.Tables["item"].Rows[0].ItemArray[0]);

        //    TextBox1.Text = Convert.ToString(ds.Tables["category"].Rows[0].ItemArray[0]);
        //    TextBox2.Text = Convert.ToString(ds.Tables["category"].Rows[0].ItemArray[1]);
        //    c.cmd.ExecuteNonQuery();
        //}

        //catch (Exception)
        //{
        //    throw;
        //}

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/categorydetail.aspx");

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/admin.aspx");
    }
    
    protected void DropDownList1_DataBound(object sender, EventArgs e)
    {
        DropDownList1.Items.Insert(0, new ListItem("select", "0"));
    }

    protected void DropDownList2_SelectedIndexChanged1(object sender, EventArgs e)
    {

        try
        {
            c = new connect();
            ds = new DataSet();
            c.cmd.CommandText = "select * from category where subcategory='" + DropDownList2.SelectedItem.Text + "'";
            adp.SelectCommand = c.cmd;
            adp.Fill(ds, "category");

            //DropDownList3 .SelectedItem .Text  = Convert.ToString(ds.Tables["item"].Rows[0].ItemArray[0]);
            TextBox1.Text = Convert.ToString(ds.Tables["category"].Rows[0].ItemArray[0]);
            TextBox2.Text = Convert.ToString(ds.Tables["category"].Rows[0].ItemArray[1]);
            TextBox3.Text = Convert.ToString(ds.Tables["category"].Rows[0].ItemArray[2]);

            c.cmd.ExecuteNonQuery();
        }

        catch (Exception)
        {
            throw;
        }
    }
    protected void DropDownList2_DataBound(object sender, EventArgs e)
    {

        DropDownList2.Items.Insert(0, new ListItem("select", "0"));

    }
}

