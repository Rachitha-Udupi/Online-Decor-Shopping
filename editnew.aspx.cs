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


public partial class editnew : System .Web .UI .Page 
{
    connect c;
    SqlDataAdapter adp = new SqlDataAdapter();
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        try
        {
            c = new connect();
            ds = new DataSet();
            if (FileUpload1.HasFile)
            {
                String str = FileUpload1.FileName;
                FileUpload1.PostedFile.SaveAs(Server.MapPath(str));
                String image = str.ToString();

                c.cmd.CommandText = "update item_details set item_name=@pname,price=@prc,description=@des,qty=@qt,image=@img where item_id='" + DropDownList4.SelectedItem.Text + "'";
                //c.cmd.Parameters.Add("@product_id", SqlDbType.NVarChar).Value = TextBox1.Text;
                c.cmd.Parameters.Add("@pname", SqlDbType.NVarChar).Value = TextBox2.Text;
                //c.cmd.Parameters.Add("@cat", SqlDbType.NVarChar).Value = DropDownList1.SelectedItem.Text;
                c.cmd.Parameters.Add("@prc", SqlDbType.BigInt).Value = Convert.ToInt32(TextBox3.Text);
                c.cmd.Parameters.Add("@des", SqlDbType.NVarChar).Value = TextBox4.Text;
                c.cmd.Parameters.Add("@qt", SqlDbType.Int).Value = DropDownList2.SelectedItem.Text;
                c.cmd.Parameters.AddWithValue("@img", image);

            }
            else
            {
                c.cmd.CommandText = "update item_details set item_name=@pname,price=@prc,description=@des,qty=@qt where item_id='" + DropDownList4.SelectedItem.Text + "'";
                //c.cmd.Parameters.Add("@product_id", SqlDbType.NVarChar).Value = TextBox1.Text;
                c.cmd.Parameters.Add("@pname", SqlDbType.NVarChar).Value = TextBox2.Text;
                //c.cmd.Parameters.Add("@cat", SqlDbType.NVarChar).Value = DropDownList1.SelectedItem.Text;
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
        try
        {
            c = new connect();
            ds = new DataSet();
            c.cmd.CommandText = "select * from item_details where item_id='" + DropDownList4.SelectedItem.Text + "'";
            adp.SelectCommand = c.cmd;
            adp.Fill(ds, "item1");

            //DropDownList3 .SelectedItem .Text  = Convert.ToString(ds.Tables["item"].Rows[0].ItemArray[0]);

            TextBox1.Text = Convert.ToString(ds.Tables["item1"].Rows[0].ItemArray[0]);
            TextBox2.Text = Convert.ToString(ds.Tables["item1"].Rows[0].ItemArray[1]);
            TextBox5.Text = Convert.ToString(ds.Tables["item1"].Rows[0].ItemArray[2]);
            TextBox6.Text = Convert.ToString(ds.Tables["item1"].Rows[0].ItemArray[3]);
            TextBox3.Text = Convert.ToString(ds.Tables["item1"].Rows[0].ItemArray[4]);
            TextBox4.Text = Convert.ToString(ds.Tables["item1"].Rows[0].ItemArray[5]);
            DropDownList2.Text = Convert.ToString(ds.Tables["item1"].Rows[0].ItemArray[6]);
            //   DropDownList1.SelectedValue.Text=Convert.ToString(ds.Tables ["item"].Rows[0].ItemArray[2]);
            //DropDownList1.Text = Convert.ToString(ds.Tables["item1"].Rows[0].ItemArray[2]);
           
            
         

            // DropDownList2.SelectedItem.Text = Convert.ToString(ds.Tables["product"].Rows[0].ItemArray[5]);
            //FileUpload1= ds.Tables["item"].Rows[0].ItemArray[6];
            c.cmd.ExecuteNonQuery();
        }
        catch (Exception)
        {
            throw;
        }
    }
    protected void DropDownList3_DataBound(object sender, EventArgs e)
    {
        DropDownList3.Items.Insert(0, new ListItem("select", "0"));
    }
    protected void DropDownList4_DataBound(object sender, EventArgs e)
    {
        DropDownList4.Items.Insert(0, new ListItem("select", "0"));
    }
    protected void DropDownList5_DataBound(object sender, EventArgs e)
    {
        DropDownList5.Items.Insert(0, new ListItem("select", "0"));
    }
    protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void Button2_Click1(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}
