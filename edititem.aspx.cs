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


public partial class edititem : System.Web.UI.Page
{
    connect c;
    SqlDataAdapter adp = new SqlDataAdapter();
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("~/adminlogin.aspx");
        }
    }

    //protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    //{

    //    try
    //    {
    //        c = new connect();
    //        ds = new DataSet();
    //        c.cmd.CommandText = "select * from item where item_id='" + DropDownList2.SelectedItem.Text   + "'";
    //        adp.SelectCommand = c.cmd;
    //        adp.Fill(ds, "item");

    //       //DropDownList3 .SelectedItem .Text  = Convert.ToString(ds.Tables["item"].Rows[0].ItemArray[0]);

    //        TextBox1.Text = Convert.ToString(ds.Tables["item"].Rows[0].ItemArray[0]);
    //        TextBox2.Text = Convert.ToString(ds.Tables["item"].Rows[0].ItemArray[1]);
    //        //DropDownList1.SelectedValue.Text=Convert.ToString(ds.Tables ["item"].Rows[0].ItemArray[2];
    //        DropDownList1.SelectedItem.Text = Convert.ToString(ds.Tables["item"].Rows[0].ItemArray[2]);
    //        TextBox3.Text = Convert.ToString(ds.Tables["item"].Rows[0].ItemArray[3]);
    //        TextBox4.Text = Convert.ToString(ds.Tables["item"].Rows[0].ItemArray[4]);
    //        DropDownList2.SelectedItem.Text = Convert.ToString(ds.Tables["item"].Rows[0].ItemArray[5]);
    //        //FileUpload1= ds.Tables["item"].Rows[0].ItemArray[6];
    //        c.cmd.ExecuteNonQuery();
    //    }
    //    catch (Exception)
    //    {
    //        throw;
    //    }


    //}
    protected void Button2_Click1(object sender, EventArgs e)
    {
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";

    }
    protected void Button3_Click(object sender, EventArgs e)
    {

        //try
        //{
        //    c = new connect();
        //    ds = new DataSet();

        //    c.cmd.CommandText = "update item set item_name='" + TextBox2.Text + "',category='" + DropDownList1.SelectedValue + "',price='" + TextBox3.Text + "',description='" + TextBox4.Text + "',qty='" + DropDownList2 .SelectedIndex + "',item_image='" + FileUpload1.FileBytes + "' where item_id='" + DropDownList2.SelectedIndex + "'";
        //    MessageBox.Show("updated");

        //    c.cmd.ExecuteNonQuery();
        //}
        //catch (Exception)
        //{
        //    throw;
        //}
        try
        {
            c = new connect();
            ds = new DataSet();
            if (FileUpload1.HasFile)
            {
                String str = FileUpload1.FileName;
                FileUpload1.PostedFile.SaveAs(Server.MapPath(str));
                String image = str.ToString();

                c.cmd.CommandText = "update item set item_name=@pname,price=@prc,description=@des,qty=@qt,item_image=@img where item_id='" + DropDownList4.SelectedItem.Text + "'";
               // c.cmd.Parameters.Add("@product_id", SqlDbType.NVarChar).Value = TextBox1.Text;
                c.cmd.Parameters.Add("@pname", SqlDbType.NVarChar).Value = TextBox2.Text;
                //c.cmd.Parameters.Add("@cat", SqlDbType.NVarChar).Value = DropDownList1.SelectedItem.Text;
                c.cmd.Parameters.Add("@prc", SqlDbType.BigInt).Value = Convert.ToInt32(TextBox3.Text);
                c.cmd.Parameters.Add("@des", SqlDbType.NVarChar).Value = TextBox4.Text;
                c.cmd.Parameters.Add("@qt", SqlDbType.Int).Value = DropDownList2.SelectedItem.Text;
                c.cmd.Parameters.AddWithValue("@img", image);

            }
            else
            {
                c.cmd.CommandText = "update item set item_name=@pname,category=@cat,price=@prc,description=@des,qty=@qt where item_id='" + DropDownList4.SelectedItem.Text + "'";
                c.cmd.Parameters.Add("@product_id", SqlDbType.NVarChar).Value = TextBox1.Text;
                c.cmd.Parameters.Add("@pname", SqlDbType.NVarChar).Value = TextBox2.Text;
                c.cmd.Parameters.Add("@cat", SqlDbType.NVarChar).Value = DropDownList1.SelectedItem.Text;
                c.cmd.Parameters.Add("@prc", SqlDbType.BigInt).Value = Convert.ToInt32(TextBox3.Text);
                c.cmd.Parameters.Add("@des", SqlDbType.NVarChar).Value = TextBox4.Text;
                c.cmd.Parameters.Add("@qt", SqlDbType.Int).Value = DropDownList2.SelectedItem.Text;
                //c.cmd.Parameters.AddWithValue("@img", image);
            }

            c.cmd.ExecuteNonQuery();
            MessageBox.Show("updated");

        }
        catch (Exception)
        {
            throw;
        }
    }
    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        //try
        //{
        //    c = new connect();
        //    ds = new DataSet();
        //    c.cmd.CommandText = "select * from item where item_id='" + DropDownList2.SelectedItem.Text + "'";
        //    adp.SelectCommand = c.cmd;
        //    adp.Fill(ds, "item");

        //    //DropDownList3 .SelectedItem .Text  = Convert.ToString(ds.Tables["item"].Rows[0].ItemArray[0]);

        //    TextBox1.Text = Convert.ToString(ds.Tables["item"].Rows[0].ItemArray[0]);
        //    TextBox2.Text = Convert.ToString(ds.Tables["item"].Rows[0].ItemArray[1]);
        //    //DropDownList1.SelectedValue.Text=Convert.ToString(ds.Tables ["item"].Rows[0].ItemArray[2];
        //    DropDownList1.SelectedItem.Text = Convert.ToString(ds.Tables["item"].Rows[0].ItemArray[2]);
        //    TextBox3.Text = Convert.ToString(ds.Tables["item"].Rows[0].ItemArray[3]);
        //    TextBox4.Text = Convert.ToString(ds.Tables["item"].Rows[0].ItemArray[4]);
        //    DropDownList2.SelectedItem.Text = Convert.ToString(ds.Tables["item"].Rows[0].ItemArray[5]);
        //    //FileUpload1= ds.Tables["item"].Rows[0].ItemArray[6];
        //    c.cmd.ExecuteNonQuery();
        //}
        //catch (Exception)
        //{
        //    throw;
        //}


        //c = new connect();
        try
        {
            c = new connect();
            ds = new DataSet();
            c.cmd.CommandText = "select * from item where item_id='" + DropDownList4.SelectedItem.Text + "'";
            adp.SelectCommand = c.cmd;
            adp.Fill(ds, "item1");

            //DropDownList3 .SelectedItem .Text  = Convert.ToString(ds.Tables["item"].Rows[0].ItemArray[0]);

            TextBox1.Text = Convert.ToString(ds.Tables["item1"].Rows[0].ItemArray[0]);
            TextBox2.Text = Convert.ToString(ds.Tables["item1"].Rows[0].ItemArray[1]);
            //   DropDownList1.SelectedValue.Text=Convert.ToString(ds.Tables ["item"].Rows[0].ItemArray[2]);
            DropDownList1.Text = Convert.ToString(ds.Tables["item1"].Rows[0].ItemArray[2]);
            TextBox5.Text = Convert.ToString(ds.Tables["item1"].Rows[0].ItemArray[3]);
            TextBox3.Text = Convert.ToString(ds.Tables["item1"].Rows[0].ItemArray[4]);
            TextBox4.Text = Convert.ToString(ds.Tables["item1"].Rows[0].ItemArray[5]);
            DropDownList2.Text = Convert.ToString(ds.Tables["item1"].Rows[0].ItemArray[6]);

            // DropDownList2.SelectedItem.Text = Convert.ToString(ds.Tables["product"].Rows[0].ItemArray[5]);
            //FileUpload1= ds.Tables["item"].Rows[0].ItemArray[6];
            c.cmd.ExecuteNonQuery();
        }
        catch (Exception)
        {
            throw;
        }
    }

    protected void DropDownList4_DataBound(object sender, EventArgs e)
    {
        DropDownList4.Items.Insert(0, new ListItem("select", "0"));
    }
    protected void DropDownList3_DataBound(object sender, EventArgs e)
    {
        DropDownList3.Items.Insert(0, new ListItem("select", "0"));
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/itemdetail.aspx");

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/admin.aspx");
    }

    protected void DropDownList5_DataBound(object sender, EventArgs e)
    {
        DropDownList5.Items.Insert(0, new ListItem("select", "0"));
    }
}
