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


public partial class ccart : System.Web.UI.Page
{
    connect c;

    DataTable dt = new DataTable();
    SqlDataAdapter adp = new SqlDataAdapter();
    SqlDataAdapter adp1 = new SqlDataAdapter();
    SqlDataAdapter adp2 = new SqlDataAdapter();
    DataTable dt2 = new DataTable();
    DataSet ds;


    protected void Page_Load(object sender, EventArgs e)
    {

        c = new connect();
        Session["grandtotal"] = Label17.Text;
        TextBox11.Visible = false;
        TextBox12.Visible = false;
        DropDownList1.Visible = false;
        DropDownList2.Visible = false;
        TextBox13.Visible = false;
        RadioButton1.Visible = false;
      //  RadioButton2.Visible = false;

      //  Label11 = Session["tempamt"].ToString();
        DataTable dt = new DataTable();
        SqlDataReader myreader = null;
        c.cmd.CommandText = "select * from customer where cust_id='" + Session["cust_id"].ToString() + "'";

        adp.SelectCommand = c.cmd;

        //adp.Fill(ds, "customer");
        adp.SelectCommand = c.cmd;
        adp.Fill(dt);
        myreader = c.cmd.ExecuteReader();
        while (myreader.Read())
        {
            Label4.Text = (myreader["cust_fname"].ToString());
            TextBox1.Text = (myreader["contact"].ToString());
            TextBox2.Text = (myreader["address"].ToString()) + " " + (myreader["city"].ToString()) + " " + (myreader["pincode"].ToString()) + " " + (myreader["state"].ToString());

        }
        myreader.Close();
        // TextBox2.Text = Session["deladdress"] + " " + Session["delcity"] + " " + Session["delpincode"] + " " + Session["delstate"];
        //if (dt.Rows.Count > 0)
        //{
        //    Label4.Text = ds.Tables["customer"].Rows[0].ItemArray[1].ToString();
        //}

        //c.cmd.CommandText = "select sum(totalprice)from cart where cust_id='" + Session["cust_id"].ToString() + "'";
        //DataTable dt1 = new DataTable();
        //adp1.SelectCommand = c.cmd;
        //adp1.Fill(dt1);
        //int grandtotal;
        //grandtotal = c.cmd.ExecuteScalar();
        //Label17.Text = grandtotal.ToString();

        // DataTable dt1=new DataTable();
        // string cid=Session["cust_id"].ToString();
        //int sum = Convert.ToInt32(dt1.Compute("SUM(totalprice)","cust_id = cid"));

        DataTable dt1 = new DataTable();
        c.cmd.CommandText = "select sum(totalprice)from buynow where cust_id='" + Session["cust_id"].ToString() + "'";
        object obj = c.cmd.ExecuteScalar();
        if (obj != null)
            Label17.Text = obj.ToString();

    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        //string p = ((System.Web.UI.WebControls.Label)e.Item.FindControl("Label9")).Text;
        //string q = ((System.Web.UI.WebControls.Label )e.Item.FindControl("Label10")).Text;
        //int pr, qty, amt;
        //pr = Convert.ToInt16(p);
        //qty = Convert.ToInt16(q);
        //amt = pr * qty;
        //((System.Web.UI.WebControls.Label)e.Item.FindControl("Label1")).Text = amt.ToString();

      
        //String  p =Convert .ToInt16 (((System.Web.UI.WebControls.Label)e.Item.FindControl("Label13")).Text);
        //String  q = Convert .ToInt16 (((System.Web.UI.WebControls.Label)e.Item.FindControl("Label14")).Text);
        // c = new connect();

        // DataTable dt1 = new DataTable();
        //SqlDataReader myreader1 = null;
        // c.cmd.CommandText = "select * from cart where cust_id='" + Session["cust_id"].ToString() + "'";

        // adp.SelectCommand = c.cmd;

        ////adp.Fill(ds, "customer");
        //adp.SelectCommand = c.cmd;
        //adp.Fill(dt1);
        //myreader1 = c.cmd.ExecuteReader();
        //while (myreader1.Read())
        //{
        //   (((System.Web.UI.WebControls.Label)e.Item.FindControl("Label15")).Text)=(myreader1["price"].ToString())*(myreader1["qty"].ToString ());
        //}
        //int total;
        //total = p * q;
        //((System.Web.UI.WebControls.Label)e.Item.FindControl("Label15")).Text = Convert.ToString(total);
        // int p=Convert.ToInt32(((System.Web.UI.WebControls.Label)e.Item.FindControl("Label13")).Text);
        // int q=Convert.ToInt32(((System.Web.UI.WebControls.Label)e.Item.FindControl("Label14")).Text);
        //// c = new connect();
        // int total;
        // total=p*q;
        // ((System.Web.UI.WebControls.Label)e.Item.FindControl("Label14")).Text=Convert.ToString(total);
        // DataList1.DataBind();
        //String  gt = ((System.Web.UI.WebControls.TextBox)e.Item.FindControl("TextBox1")).Text;
        //foreach (DataListItem Item in DataList1.Items)
        //{
        //    TextBox3.Text += "," + ((System.Web.UI.WebControls.Label)(Item.FindControl("Label15"))).Text;

        //    //gt += Convert.ToString(((System.Web.UI.WebControls.Label)e.Item.FindControl("Label15")).Text);
        //    //((System.Web.UI.WebControls.TextBox)e.Item.FindControl("TextBox1")).Text = gt.ToString();
        //}
    }

    private string Math(string p, string p_2)
    {
        throw new Exception("The method or operation is not implemented.");
    }

    private string ArithmeticException(string p, string p_2)
    {
        throw new Exception("The method or operation is not implemented.");
    }

    private string mul(string p)
    {
        throw new Exception("The method or operation is not implemented.");
    }

    private string ArithmeticException(string p)
    {
        throw new Exception("The method or operation is not implemented.");
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        //Response.Redirect("~/address.aspx");
        Panel1.Visible = true;
        TextBox2.Visible = false;


    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        //foreach (DataListItem Item in DataList1.Items)
        //{
        //    TextBox3.Text += "," + ((System.Web.UI.WebControls.Label)(Item.FindControl("Label15"))).Text;

        //gt += Convert.ToString(((System.Web.UI.WebControls.Label)e.Item.FindControl("Label15")).Text);
        //((System.Web.UI.WebControls.TextBox)e.Item.FindControl("TextBox1")).Text = gt.ToString();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox2.Visible = true;
        Session["deladdress"] = TextBox3.Text;
        Session["delcity"] = TextBox4.Text;
        Session["delpincode"] = TextBox5.Text;
        Session["delstate"] = TextBox6.Text;
        TextBox2.Text = Session["deladdress"] + "  " + Session["delcity"] + " " + Session["delpincode"] + " " + Session["delstate"];

    }
    //protected void Button1_Click(object sender, EventArgs e)
    //{
    //    c = new connect();

    //        int count;
    //        c.cmd.CommandText = "select count (*) from orderdetail ";
    //        count = Convert.ToInt16(c.cmd.ExecuteScalar()) + 1;
    //       Label22 .Text  = count.ToString();

    //       //string img = (System.Web.UI.WebControls.Label)DataList1.FindControl("Label14");
    //       //string i = CType((System.Web.UI.WebControls.Label)DataList.Item.FindControl("Label14")).Text;

    //        //string q=((System.Web.UI.WebControls.Label)e.Item.FindControl("Label14")).Text;
    //        //string p= ((System.Web.UI.WebControls.Label)e.Item.FindControl("Label13")).Text;
    //        //string img= ((System.Web.UI.WebControls.Image )e.Item.FindControl("Image1")).Text; 
    //        //string t= ((System.Web.UI.WebControls.Label)e.Item.FindControl("Label15")).Text;

    //       // Label22.Text = count.ToString();
    //       c.cmd.CommandText = "select * from cart where cust_id='" + Session["cust_id"]+ "'";
    //       adp.SelectCommand = c.cmd;
    //       DataTable dt1 = new DataTable();
    //       SqlDataReader myreader1= null;
    //       //adp.Fill(ds, "customer");
    //       adp.SelectCommand = c.cmd;
    //       adp.Fill(dt1);

    //       myreader1 = c.cmd.ExecuteReader();
    //       while (myreader1.Read())
    //       {
    //           TextBox7.Text  =(myreader1["item_id"].ToString());
    //          TextBox8.Text = (myreader1["qty"].ToString());
    //           TextBox9 .Text  = (myreader1["price"].ToString());
    //          Image2 .ImageUrl = (myreader1["image"].ToString());
    //          TextBox10 .Text  = (myreader1["totalprice"].ToString());

    //          c.cmd.CommandText = "insert into orderdetail values(@order_id,@cust_id,@namew,@address,@contact,@item_id,@date,@qty,@price,@image,@total)";
    //          c.cmd.Parameters.Clear();
    //          c.cmd.Parameters.Add("@order_id", SqlDbType.BigInt).Value = count;
    //          c.cmd.Parameters.Add("@cust_id", SqlDbType.NVarChar).Value = Session["cust_id"];
    //          c.cmd.Parameters.Add("@name", SqlDbType.NVarChar ).Value = TextBox4 .Text ;
    //          c.cmd.Parameters.Add("@address", SqlDbType.NVarChar ).Value = TextBox1.Text ;
    //          c.cmd.Parameters.Add("@contact", SqlDbType.BigInt).Value = TextBox2 .Text;
    //          c.cmd.Parameters.Add("@item_id", SqlDbType.NVarChar).Value = TextBox7.Text;
    //          c.cmd.Parameters.Add("@date", SqlDbType.DateTime).Value = DateTime.Now;
    //          c.cmd.Parameters.Add("@qty", SqlDbType.Int).Value = TextBox8.Text;
    //          c.cmd.Parameters.Add("@price", SqlDbType.BigInt).Value = TextBox9.Text;
    //          c.cmd.Parameters.Add("@image", SqlDbType.NVarChar).Value = Image2.ImageUrl;
    //          c.cmd.Parameters.Add("@total", SqlDbType.BigInt).Value = TextBox10.Text;

    //         // c = new connect();
    //          //c.cmd.CommandText = "insert into order values(@cid,@itemid,@date1,@image1)";
    //          //c.cmd.Parameters.Clear();
    //          //c.cmd.Parameters.Add("@cid", SqlDbType.NVarChar).Value = Session["cust_id"];0
    //          //c.cmd.Parameters.Add("@itemid", SqlDbType.NVarChar).Value = TextBox7.Text;
    //          //c.cmd.Parameters.Add("@date1", SqlDbType.DateTime).Value = DateTime.Now;
    //          //c.cmd.Parameters.Add("@image1", SqlDbType.NVarChar).Value = Image2.ImageUrl;
    //          ////c.cmd.ExecuteNonQuery();
    //          //MessageBox.Show("Inserted to order table");
    //          //myreader1.Close();
    //          //c.cmd.ExecuteNonQuery();
    //          MessageBox.Show("Inserted to order detail table");


    //       }
    //       //myreader1.Close();
    //       c.cmd.ExecuteNonQuery();
    //       myreader1.Close();











    //       //try
    //       //{
    //       //c = new connect();
    //       //c.cmd.CommandText = "insert into order values(@cid,@itemid,@date1,@image1)";
    //       //c.cmd.Parameters.Clear();
    //       //c.cmd.Parameters.Add("@cid", SqlDbType.NVarChar).Value = Session["cust_id"];
    //       //c.cmd.Parameters.Add("@itemid", SqlDbType.NVarChar).Value = TextBox7.Text;
    //       //c.cmd.Parameters.Add("@date1", SqlDbType.DateTime).Value = DateTime.Now;
    //       //c.cmd.Parameters.Add("@image1", SqlDbType.NVarChar).Value = Image2.ImageUrl;
    //       //c.cmd.ExecuteNonQuery();
    //       //MessageBox.Show("Inserted to order table");

    //       //}
    //       //catch (Exception)
    //       //{
    //       //    throw;
    //       //}
    //       //finally
    //       //{
    //       //    c.cnn.Close();
    //       //}


    //}

    private object CType(System.Web.UI.WebControls.Label label)
    {
        throw new Exception("The method or operation is not implemented.");
    }

    private object CType(object p, System.Web.UI.WebControls.Label label)
    {
        throw new Exception("The method or operation is not implemented.");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlDataAdapter sda = new SqlDataAdapter();

        c = new connect();
        int count1, count2;
        c.cmd.CommandText = "select count (*) from orderdetail ";
        count1 = Convert.ToInt16(c.cmd.ExecuteScalar()) + 1;
        Label22.Text = count1.ToString();

        c.cmd.CommandText = "select count (*) from cart where cust_id='" + Session["cust_id"] + "'";
        count2 = Convert.ToInt16(c.cmd.ExecuteScalar());

        c.cmd.CommandText = "select * from cart where cust_id='" + Session["cust_id"] + "'";
        DataSet ds = new DataSet();
        sda.SelectCommand = c.cmd;
        sda.Fill(ds, "cart");
        //MessageBox.Show(ds.Tables["cart"].Rows.Count.ToString());

        for (int i = 0; i < ds.Tables["cart"].Rows.Count; i++)
        {
            c.cmd.CommandText = "insert into orderdetail values(@order_id,@cust_id,@name,@address,@contact,@item_id,@date,@qty,@price,@image,@total,@paymode)";
            c.cmd.Parameters.Clear();
            c.cmd.Parameters.Add("@order_id", SqlDbType.BigInt).Value = count1;
            c.cmd.Parameters.Add("@cust_id", SqlDbType.NVarChar).Value = Session["cust_id"];
            c.cmd.Parameters.Add("@name", SqlDbType.NVarChar).Value = Label4.Text;
            c.cmd.Parameters.Add("@address", SqlDbType.NVarChar).Value = TextBox2.Text;
            c.cmd.Parameters.Add("@contact", SqlDbType.BigInt).Value = TextBox1.Text;

            c.cmd.Parameters.Add("@item_id", SqlDbType.NVarChar).Value = ds.Tables["cart"].Rows[i].ItemArray[0];

            c.cmd.Parameters.Add("@date", SqlDbType.DateTime).Value = DateTime.Now;
            c.cmd.Parameters.Add("@qty", SqlDbType.Int).Value = ds.Tables["cart"].Rows[i].ItemArray[5];
            c.cmd.Parameters.Add("@price", SqlDbType.BigInt).Value = ds.Tables["cart"].Rows[i].ItemArray[3];
            c.cmd.Parameters.Add("@image", SqlDbType.NVarChar).Value = ds.Tables["cart"].Rows[i].ItemArray[4];
            c.cmd.Parameters.Add("@total", SqlDbType.BigInt).Value = ds.Tables["cart"].Rows[i].ItemArray[6];
            c.cmd.Parameters.Add("@paymode", SqlDbType.NVarChar).Value = Session["payment"];
            c.cmd.ExecuteNonQuery();


        }
        // c.cmd.ExecuteNonQuery();
        MessageBox.Show("Inserted to order detail table");

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        TextBox11.Visible = true;
        TextBox12.Visible = true;
        DropDownList1.Visible = true;
        DropDownList2.Visible = true;
        TextBox13.Visible = true;
        SqlDataReader myreader = null;
        c.cmd.CommandText = "select  email from customer where email='" + Session["cust_id"] + "'";

        adp.SelectCommand = c.cmd;

        //adp.Fill(ds, "customer");
        adp.SelectCommand = c.cmd;
        adp.Fill(dt);
        myreader = c.cmd.ExecuteReader();
        while (myreader.Read())
        {

            TextBox11.Text = (myreader["email"].ToString());


        }
        myreader.Close();
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        RadioButton1.Visible = true;
       // RadioButton2.Visible = true;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //if (CheckBox1.Checked == true)
        //{
        //    Session["payment"] = "Debit card";
        //}
        //else if (RadioButton1.Checked == true)
        //{
        //    Session["payment"] = "COD";
        //}
        //else if (RadioButton2.Checked == true)
        //{
        //    Session["payment"] = "POD";
        //}
        //else
        //{
        //    MessageBox.Show("Please select the payment mode");
        //}
        if (CheckBox1.Checked == true)
        {
            Session["payment"] = "Debit card";

            c = new connect();
            DataTable dt = new DataTable();
            SqlDataReader myreader2 = null;
            c.cmd.CommandText = "select * from card where name='" + Label4.Text + "'";

            adp.SelectCommand = c.cmd;

            //adp.Fill(ds, "customer");
            adp.SelectCommand = c.cmd;
            adp.Fill(dt);
            myreader2 = c.cmd.ExecuteReader();
            while (myreader2.Read())
            {
                Label29.Text = (myreader2["email"].ToString());
                Label30.Text = (myreader2["cardno"].ToString());
                Label31.Text = (myreader2["cvv"].ToString());
                Label32.Text = (myreader2["month"].ToString());
                Label33.Text = (myreader2["year"].ToString());
                Label34.Text = (myreader2["balance"].ToString());

            }
            myreader2.Close();
            c.cmd.CommandText = "select * from card where email='" + TextBox11.Text + "'";
            ds = new DataSet();
            adp1.SelectCommand = c.cmd;
            adp1.Fill(ds, "card");
            adp1.SelectCommand = c.cmd;
            adp1.Fill(dt);

            if (TextBox11.Text == "" || TextBox12.Text == "" || TextBox13.Text == "")
            {
                MessageBox.Show("Enter the fields");
            }
            else if (ds.Tables["card"].Rows.Count > 0)
            {
                if (TextBox11.Text == Label29.Text && TextBox12.Text == Label30.Text && TextBox13.Text == Label31.Text)
                {
                    if (Convert.ToInt16(DropDownList1.SelectedValue) <= DateTime.Today.Year)
                    {
                        if (Convert.ToInt16(DropDownList2.SelectedValue) <= DateTime.Today.Month)
                        {
                            MessageBox.Show(" Card has been expired");
                        }
                        else
                        {
                            //if (TextBox11.Text == Label29.Text && TextBox12.Text == Label30.Text && TextBox13.Text == Label31.Text)
                            //{
                            int t, b;
                            t = Convert.ToInt16(Label17.Text);
                            b = Convert.ToInt32(Label34.Text);
                            if (t > b)
                            {
                                MessageBox.Show("Insufficient money!!");
                            }
                            else
                            {
                                c.cmd.CommandText = "update card set balance=balance-@bal where cardno='" + TextBox12.Text + "'";

                                c.cmd.Parameters.Add("@bal", SqlDbType.Int).Value = Convert.ToInt16(Label17.Text);

                                c.cmd.ExecuteNonQuery();


                            }
                        }
                    }

                }
                else if (TextBox11.Text != Label29.Text && Convert.ToInt64(TextBox12.Text) == Convert.ToInt64(Label30.Text) && Convert.ToInt16(TextBox13.Text) == Convert.ToInt16(Label31.Text))
                {
                    MessageBox.Show("Email id is incorrect");
                }
                else if (TextBox11.Text == Label29.Text && Convert.ToInt64(TextBox12.Text) != Convert.ToInt64(Label30.Text) && Convert.ToInt16(TextBox13.Text) == Convert.ToInt16(Label31.Text))
                {
                    MessageBox.Show("card number is incorrect");
                }
                else if (TextBox11.Text == Label29.Text && Convert.ToInt64(TextBox12.Text) == Convert.ToInt64(Label30.Text) && Convert.ToInt16(TextBox13.Text) != Convert.ToInt16(Label31.Text))
                {
                    MessageBox.Show("CVV in incorrect");

                }


            }

            //else if (Convert.ToInt16(TextBox11.Text) != Convert.ToInt16(Label29.Text) && Convert.ToInt16(TextBox12.Text) == Convert.ToInt16(Label30.Text) && Convert.ToInt16(TextBox13.Text) == Convert.ToInt16(Label31.Text))
            //{ MessageBox.Show("No card available in this name!!"); }
            //else if (Convert.ToInt16(TextBox11.Text) == Convert.ToInt16(Label29.Text) && Convert.ToInt16(TextBox12.Text) != Convert.ToInt16(Label30.Text) && Convert.ToInt16(TextBox13.Text) == Convert.ToInt16(Label31.Text))
            //{ MessageBox.Show("Check card no!!"); }
            //else if (Convert.ToInt16(TextBox11.Text) == Convert.ToInt16(Label29.Text) && Convert.ToInt16(TextBox12.Text) == Convert.ToInt16(Label30.Text) && Convert.ToInt16(TextBox13.Text) != Convert.ToInt16(Label31.Text))
            //{ MessageBox.Show("Invalid cvv!!"); }
        }

        else if (RadioButton1.Checked == true)
        {
            Session["payment"] = "COD";
        }

        else
        {
            MessageBox.Show("Please select the payment mode");
        }
    }

    //protected void DataList1_SelectedIndexChanged1(object sender, EventArgs e)
    //{
    //    ((System.Web.UI.WebControls.Label)e.Item.FindControl("Label11")).Text = Session["tempamt"];
    //}
}


