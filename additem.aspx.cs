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

public partial class additem : System.Web.UI.Page
{
    connect c;
   // string src="CS",drc="CD",trc="CI",decorative="D",lights="L",carpets="CA",blinds="B",wallpaper="W";

    string src = "CS", drc = "CD", trc = "CT",vb="BV",rb="BR",wb="BW",pb="BP",zb="BZ",rmb="BRM",wall="W", hl="LH",wl="LW",sl="LS",gl="LG",cc="CC",nc="CN",cm="CM",pm="MP",vc="CV",vd="DV",ds="SD";
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
        //    c.cmd.CommandText = "select count (*) from item";
        //    count = Convert.ToInt16(c.cmd.ExecuteScalar()) + 1;
        //    TextBox1.Text = count.ToString();
        //    Session["item_id"] = TextBox1.Text;
        //    // TextBox1.Enabled = false;
        //}
        //catch (Exception)
        //{
        //    throw;
        //}
    }
   
        
    protected void Button2_Click1(object sender, EventArgs e)
    {
        try
        {
            TextBox1.Text = " ";
            TextBox2.Text = " ";
            TextBox3.Text = " ";
            TextBox4.Text = " ";
           // TextBox5.Text = " ";

            //c = new connect();
            //int count;
            //c.cmd.CommandText = "select count (*) from item";
            //count = Convert.ToInt16(c.cmd.ExecuteScalar()) + 1;
            //TextBox1.Text = count.ToString();
        }
        catch (Exception)
        {
            throw;
        }


    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        try
        {
            if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "" || TextBox4.Text == "" || DropDownList1.Text == "" || DropDownList2.Text == "" || DropDownList3.Text == "")
            {
                //MessageBox.Show("Enter all fields");
                Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Enter all fields')</script>");
            }
            else
            {
                c = new connect();
                c.cmd.CommandText = "insert into item values(@item_id,@item_name,@category,@subcat,@price,@description,@qty,@item_image)";
                c.cmd.Parameters.Add("@item_id", SqlDbType.NVarChar).Value = TextBox1.Text;
                c.cmd.Parameters.Add("item_name", SqlDbType.NVarChar).Value = TextBox2.Text;
                c.cmd.Parameters.Add("@category", SqlDbType.NVarChar).Value = DropDownList1.SelectedItem.Text;
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
        }
        catch (Exception)
        {
            throw;
        }     
    }


    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        c = new connect();
        if (DropDownList1.SelectedItem.Text == "Single Rod Curtains")
        {
            int count;
            c.cmd.CommandText = "select count (item_id) from item where category='"+DropDownList1.SelectedItem.Text  +"' ";
            count = Convert.ToInt16(c.cmd.ExecuteScalar()) + 1;
            TextBox1.Text = src + count.ToString();

        }
        else if (DropDownList1.SelectedItem.Text == "Double Rod Curtains")
        {
        
            int count;
            c.cmd.CommandText = "select count (item_id) from item where category='"+DropDownList1.SelectedItem.Text  +"' ";
            count = Convert.ToInt16(c.cmd.ExecuteScalar()) + 1;
            TextBox1.Text = drc + count.ToString();

        }
        else if (DropDownList1.SelectedItem.Text == "Triple Rod Curtains")
        {

            int count;
            c.cmd.CommandText = "select count (item_id) from item where category='" + DropDownList1.SelectedItem.Text + "' ";
            count = Convert.ToInt16(c.cmd.ExecuteScalar()) + 1;
            TextBox1.Text = trc + count.ToString();

        }
       
        else if (DropDownList1.SelectedItem.Text == "Wallpaper Covering")
        {

            int count;
            c.cmd.CommandText = "select count(item_id) from item where sub_category='" + DropDownList1.SelectedItem.Text + "' ";
            count = Convert.ToInt16(c.cmd.ExecuteScalar()) + 1;
            TextBox1.Text =wall + count.ToString();

        }
        else if (DropDownList1.SelectedItem.Text == "Vertical Blinds")
        {

            int count;
            c.cmd.CommandText = "select count(item_id) from item where sub_category='" + DropDownList1.SelectedItem.Text + "' ";
            count = Convert.ToInt16(c.cmd.ExecuteScalar()) + 1;
            TextBox1.Text = vb+ count.ToString();

        }
        else if (DropDownList1.SelectedItem.Text == "Roller Blinds")
        {

            int count;
            c.cmd.CommandText = "select count(item_id) from item where sub_category='" + DropDownList1.SelectedItem.Text + "' ";
            count = Convert.ToInt16(c.cmd.ExecuteScalar()) + 1;
            TextBox1.Text = rb + count.ToString();

        }
        else if (DropDownList1.SelectedItem.Text == "Wood Blinds")
        {

            int count;
            c.cmd.CommandText = "select count(item_id) from item where sub_category='" + DropDownList1.SelectedItem.Text + "' ";
            count = Convert.ToInt16(c.cmd.ExecuteScalar()) + 1;
            TextBox1.Text = wb  + count.ToString();

        }
        else if (DropDownList1.SelectedItem.Text == "PVC Blinds")
        {

            int count;
            c.cmd.CommandText = "select count(item_id) from item where sub_category='" + DropDownList1.SelectedItem.Text + "' ";
            count = Convert.ToInt16(c.cmd.ExecuteScalar()) + 1;
            TextBox1.Text = pb  + count.ToString();

        }
        else if (DropDownList1.SelectedItem.Text == "Roman Blinds")
        {

            int count;
            c.cmd.CommandText = "select count(item_id) from item where sub_category='" + DropDownList1.SelectedItem.Text + "' ";
            count = Convert.ToInt16(c.cmd.ExecuteScalar()) + 1;
            TextBox1.Text = rmb + count.ToString();

        }
        else if (DropDownList1.SelectedItem.Text == "Coir Carpet")
        {

            int count;
            c.cmd.CommandText = "select count(item_id) from item where sub_category='" + DropDownList1.SelectedItem.Text + "' ";
            count = Convert.ToInt16(c.cmd.ExecuteScalar()) + 1;
            TextBox1.Text =  cc + count.ToString();

        }
        else if (DropDownList1.SelectedItem.Text == "Cotton Mat")
        {

            int count;
            c.cmd.CommandText = "select count(item_id) from item where sub_category='" + DropDownList1.SelectedItem.Text + "' ";
            count = Convert.ToInt16(c.cmd.ExecuteScalar()) + 1;
            TextBox1.Text = cm  + count.ToString();

        }
        else if (DropDownList1.SelectedItem.Text == "Vinyle Carpet")
        {

            int count;
            c.cmd.CommandText = "select count(item_id) from item where sub_category='" + DropDownList1.SelectedItem.Text + "' ";
            count = Convert.ToInt16(c.cmd.ExecuteScalar()) + 1;
            TextBox1.Text = vc + count.ToString();

        }
        else if (DropDownList1.SelectedItem.Text == "PVC Mat")
        {

            int count;
            c.cmd.CommandText = "select count(item_id) from item where sub_category='" + DropDownList1.SelectedItem.Text + "' ";
            count = Convert.ToInt16(c.cmd.ExecuteScalar()) + 1;
            TextBox1.Text = pm + count.ToString();

        }
        else if (DropDownList1.SelectedItem.Text == "Wall Lights")
        {

            int count;
            c.cmd.CommandText = "select count(item_id) from item where sub_category='" + DropDownList1.SelectedItem.Text + "' ";
            count = Convert.ToInt16(c.cmd.ExecuteScalar()) + 1;
            TextBox1.Text = wl  + count.ToString();

        }
        else if (DropDownList1.SelectedItem.Text == "Surface Light")
        {

            int count;
            c.cmd.CommandText = "select count(item_id) from item where sub_category='" + DropDownList1.SelectedItem.Text + "' ";
            count = Convert.ToInt16(c.cmd.ExecuteScalar()) + 1;
            TextBox1.Text = sl + count.ToString();

        }
        
        else if (DropDownList1.SelectedItem.Text == "Hanging Lights")
        {

            int count;
            c.cmd.CommandText = "select count(item_id) from item where sub_category='" + DropDownList1.SelectedItem.Text + "' ";
            count = Convert.ToInt16(c.cmd.ExecuteScalar()) + 1;
            TextBox1.Text = hl + count.ToString();

        }
        else if (DropDownList1.SelectedItem.Text == "Zebra Blinds")
        {

            int count;
            c.cmd.CommandText = "select count(item_id) from item where sub_category='" + DropDownList1.SelectedItem.Text + "' ";
            count = Convert.ToInt16(c.cmd.ExecuteScalar()) + 1;
            TextBox1.Text = zb  + count.ToString();

        }
        

       
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/admin.aspx");

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/itemdetail.aspx");

    }
    protected void DropDownList1_DataBound(object sender, EventArgs e)
    {
        DropDownList1.Items.Insert(0, new ListItem("---select---", "0"));
    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        c = new connect();
        if (DropDownList3.SelectedItem.Text == "Single Rod Curtains")
        {
            int count;
            c.cmd.CommandText = "select count(item_id) from item where subcategory='" + DropDownList3.SelectedItem.Text + "' ";
            count = Convert.ToInt16(c.cmd.ExecuteScalar()) + 1;
            TextBox1.Text = src + count.ToString();

        }
        else if (DropDownList3.SelectedItem.Text == "Double Rod Curtains")
        {

            int count;
            c.cmd.CommandText = "select count(item_id) from item where subcategory='" + DropDownList3.SelectedItem.Text + "' ";
            count = Convert.ToInt16(c.cmd.ExecuteScalar()) + 1;
            TextBox1.Text = drc + count.ToString();

        }
        else if (DropDownList3.SelectedItem.Text == "Triple Rod Curtains")
        {

            int count;
            c.cmd.CommandText = "select count(item_id) from item where subcategory='" + DropDownList3.SelectedItem.Text + "' ";
            count = Convert.ToInt16(c.cmd.ExecuteScalar()) + 1;
            TextBox1.Text = trc + count.ToString();

        }
        else  if (DropDownList3.SelectedItem.Text == "Vertical Blinds")
        {
            int count;
            c.cmd.CommandText = "select count(item_id) from item where subcategory='" + DropDownList3.SelectedItem.Text + "' ";
            count = Convert.ToInt16(c.cmd.ExecuteScalar()) + 1;
            TextBox1.Text = vb + count.ToString();

        }
        else if (DropDownList3.SelectedItem.Text == "Roller Blinds")
        {

            int count;
            c.cmd.CommandText = "select count(item_id) from item where subcategory='" + DropDownList3.SelectedItem.Text + "' ";
            count = Convert.ToInt16(c.cmd.ExecuteScalar()) + 1;
            TextBox1.Text = rb  + count.ToString();

        }
        else if (DropDownList3.SelectedItem.Text == "Wood Blinds")
        {

            int count;
            c.cmd.CommandText = "select count(item_id) from item where subcategory='" + DropDownList3.SelectedItem.Text + "' ";
            count = Convert.ToInt16(c.cmd.ExecuteScalar()) + 1;
            TextBox1.Text = wb  + count.ToString();

        }
        else  if (DropDownList3.SelectedItem.Text == "PVC Blinds")
        {
            int count;
            c.cmd.CommandText = "select count(item_id) from item where subcategory='" + DropDownList3.SelectedItem.Text + "' ";
            count = Convert.ToInt16(c.cmd.ExecuteScalar()) + 1;
            TextBox1.Text = pb  + count.ToString();

        }
        else if (DropDownList3.SelectedItem.Text == "Roman Blinds")
        {

            int count;
            c.cmd.CommandText = "select count(item_id) from item where subcategory='" + DropDownList3.SelectedItem.Text + "' ";
            count = Convert.ToInt16(c.cmd.ExecuteScalar()) + 1;
            TextBox1.Text = rmb  + count.ToString();

        }
        
        else if (DropDownList3.SelectedItem.Text == "Hanging Lights")
        {

           int count;
        c.cmd.CommandText = "select count(item_id) from item where subcategory='" + DropDownList3.SelectedItem.Text + "' ";
           count = Convert.ToInt16(c.cmd.ExecuteScalar()) + 1;
           TextBox1.Text = hl + count.ToString();

        }
        else if (DropDownList3.SelectedItem.Text == "Wall Lights")
        {

            int count;
            c.cmd.CommandText = "select count(item_id) from item where subcategory='" + DropDownList3.SelectedItem.Text + "' ";
            count = Convert.ToInt16(c.cmd.ExecuteScalar()) + 1;
            TextBox1.Text =  wl + count.ToString();

        }
        else if (DropDownList3.SelectedItem.Text == " Surface Lights")
        {

            int count;
            c.cmd.CommandText = "select count(item_id) from item where subcategory='" + DropDownList3.SelectedItem.Text + "' ";
            count = Convert.ToInt16(c.cmd.ExecuteScalar()) + 1;
            TextBox1.Text = sl + count.ToString();

        }
        else if (DropDownList3.SelectedItem.Text == "Gate Lights")
        {

            int count;
            c.cmd.CommandText = "select count(item_id) from item where subcategory='" + DropDownList3.SelectedItem.Text + "' ";
            count = Convert.ToInt16(c.cmd.ExecuteScalar()) + 1;
            TextBox1.Text = gl  + count.ToString();

        }
        else if (DropDownList3.SelectedItem.Text == "Wallpaper Covering")
        {

            int count;
            c.cmd.CommandText = "select count(item_id) from item where subcategory='" + DropDownList3.SelectedItem.Text + "' ";
            count = Convert.ToInt16(c.cmd.ExecuteScalar()) + 1;
            TextBox1.Text = wall  + count.ToString();

        }
        else if (DropDownList3.SelectedItem.Text == "Zebra Blinds")
        {

            int count;
            c.cmd.CommandText = "select count(item_id) from item where subcategory='" + DropDownList3.SelectedItem.Text + "' ";
            count = Convert.ToInt16(c.cmd.ExecuteScalar()) + 1;
            TextBox1.Text = zb  + count.ToString();

        }
        else if (DropDownList3.SelectedItem.Text == "Cotton Mat")
        {

            int count;
            c.cmd.CommandText = "select count(item_id) from item where subcategory='" + DropDownList3.SelectedItem.Text + "' ";
            count = Convert.ToInt16(c.cmd.ExecuteScalar()) + 1;
            TextBox1.Text = cm  + count.ToString();

        }
        else if (DropDownList3.SelectedItem.Text == "Coir Carpet")
        {

            int count;
            c.cmd.CommandText = "select count(item_id) from item where subcategory='" + DropDownList3.SelectedItem.Text + "' ";
            count = Convert.ToInt16(c.cmd.ExecuteScalar()) + 1;
            TextBox1.Text = cc  + count.ToString();

        }
        else if (DropDownList3.SelectedItem.Text =="PVC Mat")
        {

            int count;
            c.cmd.CommandText = "select count(item_id) from item where subcategory='" + DropDownList3.SelectedItem.Text + "' ";
            count = Convert.ToInt16(c.cmd.ExecuteScalar()) + 1;
            TextBox1.Text = pm + count.ToString();

        }
        else if (DropDownList3.SelectedItem.Text == "Non Wooven carpet")
        {

            int count;
            c.cmd.CommandText = "select count(item_id) from item where subcategory='" + DropDownList3.SelectedItem.Text + "' ";
            count = Convert.ToInt16(c.cmd.ExecuteScalar()) + 1;
            TextBox1.Text = nc  + count.ToString();

        }
        else if (DropDownList3.SelectedItem.Text == "Vinyle Carpet")
        {

            int count;
            c.cmd.CommandText = "select count(item_id) from item where subcategory='" + DropDownList3.SelectedItem.Text + "' ";
            count = Convert.ToInt16(c.cmd.ExecuteScalar()) + 1;
            TextBox1.Text = vc + count.ToString();

        }
        else if (DropDownList3.SelectedItem.Text == "Showcase items")
        {

            int count;
            c.cmd.CommandText = "select count(item_id) from item where subcategory='" + DropDownList3.SelectedItem.Text + "' ";
            count = Convert.ToInt16(c.cmd.ExecuteScalar()) + 1;
            TextBox1.Text = ds + count.ToString();

        }
        else if (DropDownList3.SelectedItem.Text == "Vase")
        {

            int count;
            c.cmd.CommandText = "select count(item_id) from item where subcategory='" + DropDownList3.SelectedItem.Text + "' ";
            count = Convert.ToInt16(c.cmd.ExecuteScalar()) + 1;
            TextBox1.Text = vd  + count.ToString();

        }



    }
    protected void DropDownList3_DataBound(object sender, EventArgs e)
    {
        DropDownList3.Items.Insert(0, new ListItem("select", "0"));
    }
}


    


