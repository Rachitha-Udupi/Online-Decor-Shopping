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

public partial class addItemNew : System.Web.UI.Page
{
    connect c;
    string src = "CS", drc = "CD", trc = "CT", hl="HL";//, decorative = "D", lights = "L", carpets = "CA", blinds = "B", wallpaper = "W";
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        c = new connect();
        if (DropDownList3.SelectedItem.Text == "Single Rod Curtains")
        {
            int count;
            c.cmd.CommandText = "select count(item_id) from item_details where sub_category='" + DropDownList3.SelectedItem.Text + "' ";
            count = Convert.ToInt16(c.cmd.ExecuteScalar()) + 1;
            TextBox1.Text = src + count.ToString();

        }
        else if (DropDownList3.SelectedItem.Text == "Double Rod Curtains")
        {

            int count;
            c.cmd.CommandText = "select count(item_id) from item_details where sub_category='" + DropDownList3.SelectedItem.Text + "' ";
            count = Convert.ToInt16(c.cmd.ExecuteScalar()) + 1;
            TextBox1.Text = drc + count.ToString();

        }
        else if (DropDownList3.SelectedItem.Text == "Triple Rod Curtains")
        {

            int count;
            c.cmd.CommandText = "select count(item_id) from item_details where sub_category='" + DropDownList3.SelectedItem.Text + "' ";
            count = Convert.ToInt16(c.cmd.ExecuteScalar()) + 1;
            TextBox1.Text = trc + count.ToString();

        }
        else if (DropDownList3.SelectedItem.Text == "Hanging Lights")
        {

            int count;
            c.cmd.CommandText = "select count(item_id) from item_details where sub_category='" + DropDownList3.SelectedItem.Text + "' ";
            count = Convert.ToInt16(c.cmd.ExecuteScalar()) + 1;
            TextBox1.Text = hl + count.ToString();

        }

       
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        try
        {
            c = new connect();
            c.cmd.CommandText = "insert into item_details values(@itemid,@iname,@cat,@subcat,@price,@description,@qty,@item_image)";
            c.cmd.Parameters.Add("@itemid", SqlDbType.NVarChar).Value = TextBox1.Text;
            c.cmd.Parameters.Add("iname", SqlDbType.NVarChar).Value = TextBox2.Text;
            c.cmd.Parameters.Add("@cat", SqlDbType.NVarChar).Value = DropDownList1.SelectedItem.Text;
            c.cmd.Parameters.Add("@subcat", SqlDbType.NVarChar).Value = DropDownList3.SelectedItem.Text;
            c.cmd.Parameters.Add("price", SqlDbType.BigInt).Value = Convert.ToInt32(TextBox3.Text);
            c.cmd.Parameters.Add("description", SqlDbType.NVarChar).Value = TextBox4.Text;
            c.cmd.Parameters.Add("qty", SqlDbType.Int).Value = DropDownList2.SelectedItem.Text;

            if (FileUpload1.HasFile)
            {

                String str = FileUpload1.FileName;
                FileUpload1.PostedFile.SaveAs(Server.MapPath(str));
                String image = str.ToString();
                c.cmd.Parameters.AddWithValue("@item_image", image);
                MessageBox.Show("Item inserted");
                c.cmd.ExecuteNonQuery();


            }
            else
            {
                MessageBox.Show("select image first");
            }

        }
        catch (Exception)
        {
            throw;
        }

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void Button2_Click1(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {

    }
    protected void DropDownList3_DataBound(object sender, EventArgs e)
    {
        DropDownList3.Items.Insert(0, new ListItem("select", "0"));
       //DropDownList3.Items[0].Enabled = false;
    }
}
