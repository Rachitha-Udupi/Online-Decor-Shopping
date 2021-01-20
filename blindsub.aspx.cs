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


public partial class blindsub : System.Web.UI.Page
{
    connect c;
    SqlDataAdapter adp = new SqlDataAdapter();
    SqlDataAdapter adp1 = new SqlDataAdapter();

    DataSet ds;
    DataTable dt = new DataTable();
    DataTable dt1 = new DataTable();
    DataTable dt2 = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Session["subcat"] = "Roller Blinds";

    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Session["subcat"] = "Roman Blinds";

    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "viewdetail")
        {
            Response.Redirect("~/viewdetail.aspx?id=" + e.CommandArgument.ToString());
            //string i = ((System.Web.UI.WebControls.Label)e.Item.FindControl("Label3")).Text;
            //Session["buynow"] = i;

        }

        else if (e.CommandName == "addtocart")
        {

            string i = ((System.Web.UI.WebControls.Label)e.Item.FindControl("Label3")).Text;
            string p = ((System.Web.UI.WebControls.Label)e.Item.FindControl("Label1")).Text;

            string n = ((System.Web.UI.WebControls.Label)e.Item.FindControl("Label4")).Text;
            string img = ((System.Web.UI.WebControls.Image)e.Item.FindControl("Image1")).ImageUrl;
            string q = ((System.Web.UI.WebControls.DropDownList)e.Item.FindControl("DropDownList1")).Text;
            //if (q == "")
            //{
            //    MessageBox.Show("Select quanity!!!");
            //}
            c = new connect();
            int ddl = ((System.Web.UI.WebControls.DropDownList)e.Item.FindControl("DropDownList1")).SelectedIndex;
            if (ddl < 1)
            {
                MessageBox.Show("select quantity first");

            }
            else
            {


                c = new connect();
                int qty1;
                c.cmd.CommandText = "select qty from item where item_id='" + i + "'";
                //object obj1 = c.cmd.ExecuteScalar();
                //if (obj1 != null)
                //   qty  = Convert .ToInt16 (obj1.ToString());
                qty1= Convert.ToInt16(c.cmd.ExecuteScalar());
                if (qty1 < Convert.ToInt16(q))
                {
                    MessageBox.Show("Quantity is less in stock");
                }
                else
                {

                    // int count;
                    //  c.cmd.CommandText = "select count(*) from cart";
                    // count = Convert.ToInt16(c.cmd.ExecuteScalar()) + 1;

                    //c.cmd.CommandText = "select count(item_id)from cart";
                    //count = Convert.ToInt16(c.cmd.ExecuteScalar());
                    //if (count > 1)
                    //{
                    //    MessageBox.Show("already added");
                    //}
                    //else
                    //{


                    // c.cmd.CommandText = "select item_id from cart1 where cust_id='" + Session["cust_id"] + "'";


                    c.cmd.CommandText = "select * from cart where cust_id='" + Session["cust_id"] + "' and item_id='" + i + "'";
                    ds = new DataSet();
                    adp1.SelectCommand = c.cmd;
                    adp1.Fill(ds, "cart");
                    adp1.SelectCommand = c.cmd;
                    adp1.Fill(dt);
                    if (dt.Rows.Count > 0)
                    {
                        // Session["cust_id"] = Convert.ToString(dt.Rows[0].ItemArray[0]);

                        if ((ds.Tables["cart"].Rows[0].ItemArray[0].ToString() == i))
                        {


                            MessageBox.Show("item already exist in cart");

                        }



                    }



                    else
                    {
                        int pr, qty, amt;
                        pr = Convert.ToInt16(p);
                        qty = Convert.ToInt16(q);
                        amt = pr * qty;
                        //DataTable dt3 = new DataTable();
                        //SqlDataReader reader1;
                        //c.cmd.CommandText = "select qty from item where item_id='" + i + "'";
                        //reader1 = c.cmd.ExecuteReader();
                        //while (reader1.Read())
                        //{
                        //    int avail = reader1["qty"];
                        //    int qtt= q;
                        //    if(avail>qtt)
                        //    {
                        //        MessageBox.Show("Stock is unavailable");
                        //    }
                        //}

                        c.cmd.CommandText = "insert into cart values(@item_id,@cust_id,@item_name,@price,@image,@qty,@totalprice)";
                        c.cmd.Parameters.Clear();
                        //   c.cmd.Parameters.Add("@cart_id", SqlDbType.Int).Value = count;
                        c.cmd.Parameters.Add("@item_id", SqlDbType.NVarChar).Value = i;
                        c.cmd.Parameters.Add("@cust_id", SqlDbType.NVarChar).Value = Session["cust_id"];
                        c.cmd.Parameters.Add("@item_name", SqlDbType.NVarChar).Value = n;
                        c.cmd.Parameters.Add("@price", SqlDbType.BigInt).Value = p;
                        c.cmd.Parameters.Add("@image", SqlDbType.NVarChar).Value = img;
                        c.cmd.Parameters.Add("@qty", SqlDbType.Int).Value = q;
                        // c.cmd.Parameters.Add("@totalprice", SqlDbType.BigInt).Value = Convert.ToInt16((Convert.ToInt16(p)) *(Convert.ToInt16(q)));
                        c.cmd.Parameters.Add("@totalprice", SqlDbType.BigInt).Value = amt;


                        c.cmd.ExecuteNonQuery();
                        MessageBox.Show("Inserted");
                        Response.Redirect("cart.aspx?id=" + e.CommandArgument.ToString());

                    }
                }
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (Session["cust_id"] == null)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script> message('Please login first')</script>");
                Response.Redirect("~/clogin.aspx");
            }
            else
            {
                try
                {
                    if (Session["cust_id"] != null)
                        if (!Page.IsPostBack)
                        {
                            c = new connect();
                            c.cmd.CommandText = "select item_id from item";
                            adp1.SelectCommand = c.cmd;
                            dt.Clear();
                            adp1.Fill(dt);

                            //int count;
                            //c.cmd.CommandText = "select count(*) from cart";
                            //count = Convert.ToInt16(c.cmd.ExecuteScalar()) + 1;
                            //Label lbl = DataList1.Items[i].FindControl("label3") as Label;
                            // string labeltext = lbl.Text;
                            //    Label lbl1 = DataList1.Items[i].FindControl("label1") as Label;
                            //string labeltext1 = lbl1.Text;
                            //Session["item_id"] = CType(DataList1.Controls(0).FindControl("Label3"), System.Web.UI.WebControls.Label).Text;
                            //Session["price"] = CType(DataList1.Controls(0).FindControl("Label1"), System.Web.UI.WebControls.Label).Text;
                            //c.cmd.CommandText = "insert into cart values(@cart_id,@item_id,@cust_id,@qty,@price)";
                            //c.cmd.Parameters.Clear();
                            //c.cmd.Parameters.Add("@cart_id", SqlDbType.Int).Value = count;
                            //c.cmd.Parameters.Add("@item_id", SqlDbType.Int).Value = Session["item_id"];
                            //c.cmd.Parameters.Add("@cust_id", SqlDbType.NVarChar).Value = Session["cust_id"];
                            //c.cmd.Parameters.Add("@price", SqlDbType.Int).Value = Session["price"];


                            //c.cmd.CommandText = "insert into cart(cart_id,item_id,cust_id,qty,price values('" + cart_id + "','" + Session["item_id"].ToString() + "','" + Session["cust_id"].ToString() + "','" + "'," + 1 + "," + Convert.ToInt64(s.Attributes["Label1"]) + ")";
                            //c.cmd.ExecuteNonQuery();
                            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script> message('Item Successfully Added to Cart')</script>");
                            c.cmd.CommandText = "SELECT * FROM cart WHERE (cust_id = '" + Session["cust_id"].ToString() + "')";
                            adp1.SelectCommand = c.cmd;
                            dt2.Clear();
                            adp1.Fill(dt2);
                        }
                }
                catch (NullReferenceException)
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script> alert('Error Occured') </script>");
                }
                catch (Exception)
                {
                    throw;
                }
            }

        }

        catch (NullReferenceException)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script> message('You must login first')</script>");
            Response.Redirect("~/clogin.aspx");
            //Session["link"] = "item.aspx";
            //Response.AddHeader("REFRESH", "3;URL=clogin.aspx?val=login");
        }
        catch (Exception)
        {
            throw;
        }
    }
    protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/cart.aspx");
    }
}
