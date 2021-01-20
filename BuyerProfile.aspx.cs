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
using System.IO;
using global;

public partial class BuyerProfile : System.Web.UI.Page
{
    connect c = new connect();
    SqlDataAdapter adp = new SqlDataAdapter();
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();
    DataTable dt1 = new DataTable();
    DataTable dt2 = new DataTable();
    DataTable dt3 = new DataTable();
    DataTable dt4 = new DataTable();
    DataTable dt5 = new DataTable();
    DataTable dt8 = new DataTable();
    static int j = 0;
    static int num = 0;
    static long tot = 0;
    long total = 0;
    int qty = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["cid"] == null)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script> message('Please Login First')</script>");
            Session["link"] = "BuyerProfile.aspx";
            Response.AddHeader("REFRESH", "3;URL=loginform.aspx?val=login");
        }
        else
        {
            int cat_count;
            c.cmd.CommandText = "select cat_name from cat";
            adp.SelectCommand = c.cmd;
            dt2.Clear();
            adp.Fill(dt2);
            cat_count = dt2.Rows.Count;
            if (!Page.IsPostBack)
            {
                ddcatlist.Items.Clear();
                ddcatlist.Items.Add("All");
                for (int ii = 1; ii < dt2.Rows.Count; ii++)
                {
                    ddcatlist.Items.Add(dt2.Rows[ii - 1].ItemArray[0].ToString());
                }
            }
            //HtmlAnchor[] a = new HtmlAnchor[cat_count];
            //HtmlGenericControl[] li = new HtmlGenericControl[cat_count];
            //for (int ii = 0; ii < cat_count; i++)
            //{
            //    li[i] = new HtmlGenericControl("li");
            //    a[i] = new HtmlAnchor();
            //    li[i].InnerHtml = dt2.Rows[i].ItemArray[0].ToString();
            //    a[i].ServerClick += new EventHandler(view_cats);
            //    a[i].HRef = "ProductList.aspx";
            //    a[i].Attributes.Add("cat_name", dt2.Rows[i].ItemArray[0].ToString());
            //    //catul.Controls.Add(a[i]);
            //    a[i].Controls.Add(li[i]);
            //}

            if (Convert.ToString(Session["cid"]) == "")
            {
                userlogin.Visible = false;
                user1.Visible = true;
                user2.Visible = true;
                lblitemcount.Text = "0";
                //lblamt.Text = "RS:00";
            }
            else
            {
                Label3.Text = "Hi ," + Session["cfname"].ToString() + "!";
                long tot = 0;
                user1.Visible = false;
                user2.Visible = false;
                userlogin.Visible = true;
                c.cmd.CommandText = "SELECT * FROM cart WHERE (cid = '" + Session["cid"].ToString() + "')";
                adp.SelectCommand = c.cmd;
                dt3.Clear();
                adp.Fill(dt3);
                if (dt3.Rows.Count > 0)
                {
                    lblitemcount.Text = dt3.Rows.Count.ToString();
                    for (int k = 0; k < dt3.Rows.Count; k++)
                    {
                        tot += Convert.ToInt64(dt3.Rows[k].ItemArray[4]);
                    }
                    // lblamt.Text = "RS:" + tot;
                }
                else
                {
                    lblitemcount.Text = "0";
                    //lblamt.Text = "RS:00";
                }
            }
            
               c.cmd.CommandText = "select img3 from cust where cid='" + Session["cid"].ToString() + "'";
                        adp.SelectCommand = c.cmd;
                        dt5.Clear();
                        adp.Fill(dt5);
                        if (dt5.Rows.Count > 0)
                        {
                            i1.ImageUrl = Convert.ToString(dt5.Rows[0].ItemArray[0]);
                        }
                     
            //    try
            //   {
            int loop = 0, i = 0;
            DateTime date = new DateTime();
            date = DateTime.Now;
            TableCell[] tc = new TableCell[16];
            TableRow[] tr = new TableRow[8];
            c.cmd.CommandText = "select cfname,email,contact,address,city,state,pin,country from cust where cid='" + Session["cid"].ToString() + "'";
            adp.SelectCommand = c.cmd;
            dt.Clear();
            adp.Fill(dt);
            if (dt.Rows.Count > 0)
            {

                foreach (DataColumn dc in dt.Columns)
                {
                    tr[loop] = new TableRow();
                    tc[i] = new TableCell();
                    tc[i].Text = dc.ColumnName.ToString();
                    tc[i].Text = tc[i].Text.ToUpper() + ":";
                    tc[i].CssClass = "tblhead";
                    tr[loop].Controls.Add(tc[i]);
                    i++;
                    tc[i] = new TableCell();
                    tc[i].Text = dt.Rows[0].ItemArray[loop].ToString();
                    tc[i].Text = tc[i].Text.ToUpper();
                    tr[loop].Controls.Add(tc[i]);
                    tr[loop].CssClass = "tblcontent";
                    i++;
                    addresstbl.Controls.Add(tr[loop]);
                    loop++;
                }
                TableCell tc2 = new TableCell();
                TableRow tr2 = new TableRow();
                tr2.CssClass = "updateaddr";
                LinkButton lnkaddress = new LinkButton();
                lnkaddress.Click += new EventHandler(lnkaddress_Click);
                lnkaddress.CssClass = " lnkaddress";
                addresstbl.Controls.Add(tr2);
                tr2.Controls.Add(tc2);
                tc2.Controls.Add(lnkaddress);
                lnkaddress.Text = "Update Address>>";
                tc2.ColumnSpan = 2;
                c.cmd.CommandText = "select date,name,order_detail.total,status,payment,order_detail.order_id,product_id,qty,delivery_date from orders,order_detail where orders.order_id=order_detail.order_id and cid='" + Session["cid"] + "' order by date desc";
                adp.SelectCommand = c.cmd;
                dt1.Clear();
                adp.Fill(dt1);
                if (dt1.Rows.Count > 0)
                {
                    //ordertbl.Visible = true;
                    j = 0;
                    num = 1;
                    TableRow[] tr1 = new TableRow[dt1.Rows.Count];
                    TableCell[] tc1 = new TableCell[dt1.Rows.Count * 9];
                    System.Web.UI.WebControls.Button[] b = new System.Web.UI.WebControls.Button[dt1.Rows.Count * 3];
                    for (i = 0; i < dt1.Rows.Count; i++)
                    {
                        loop = 0;
                        tr1[i] = new TableRow();
                        tr1[i].CssClass = "row";
                        total += Convert.ToInt64(dt1.Rows[i].ItemArray[2]);
                        qty += Convert.ToInt16(dt1.Rows[i].ItemArray[7]);
                        for (; j < (i + 1) * 9; j++)
                        {
                            HtmlAnchor a = new HtmlAnchor();
                            tc1[j] = new TableCell();
                            tc1[j].CssClass = "ordercontent";
                            if (j % 9 == 0)
                            {
                                tc1[j].Text = num.ToString().ToUpper();
                                num++;
                            }
                            else if (j == ((i + 1) * 9) - 1)
                            {
                                if (dt1.Rows[i].ItemArray[3].ToString() == "delivered")
                                {
                                    tc1[j].Text = "Delivered";
                                }
                                else if (dt1.Rows[i].ItemArray[3].ToString() == "cancelled")
                                {
                                    tc1[j].Text = "Cancelled";
                                }
                                else
                                {
                                    b[i] = new System.Web.UI.WebControls.Button();
                                    b[i].CssClass = "invoicebtn";
                                    b[i].Attributes.Add("order_id", dt1.Rows[i].ItemArray[5].ToString());
                                    b[i].Attributes.Add("product_id", dt1.Rows[i].ItemArray[6].ToString());
                                    b[i].Click += new EventHandler(track_Click);
                                    b[i].Text = "Track";
                                    tc1[j].Controls.Add(b[i]);
                                }
                            }
                            else if (j == ((i + 1) * 9) - 3)
                            {
                                b[i] = new System.Web.UI.WebControls.Button();
                                b[i].CssClass = "invoicebtn";
                                b[i].Attributes.Add("order_id", dt1.Rows[i].ItemArray[5].ToString());
                                b[i].Attributes.Add("product_id", dt1.Rows[i].ItemArray[6].ToString());
                                b[i].Click += new EventHandler(btninvoice_Click);
                                b[i].Text = "Invoice";
                                tc1[j].Controls.Add(b[i]);
                            }
                            else if (j == ((i + 1) * 9) - 2)
                            {
                                b[i] = new System.Web.UI.WebControls.Button();
                                b[i].CssClass = "returnbtn";
                                b[i].Attributes.Add("order_id", dt1.Rows[i].ItemArray[5].ToString());
                                b[i].Attributes.Add("product_id", dt1.Rows[i].ItemArray[6].ToString());
                                TimeSpan ts = date.Date - date.Date;
                                if (dt1.Rows[i].ItemArray[8].ToString() != "")
                                {
                                    ts = date.Date - Convert.ToDateTime(dt1.Rows[i].ItemArray[8]).Date;
                                }

                                if (ts.TotalDays > 7 && dt1.Rows[i].ItemArray[3].ToString() == "delivered")
                                {
                                    c.cmd.CommandText = "select * from reviews where cid='" + Session["cid"].ToString() + "' and product_id='" + b[i].Attributes["product_id"].ToString() + "'and order_id=" + Convert.ToInt64(b[i].Attributes["order_id"]) + "";
                                    adp.SelectCommand = c.cmd;
                                    dt4.Clear();
                                    adp.Fill(dt4);
                                    if (dt4.Rows.Count <= 0)
                                    {
                                        b[i].Text = "Rate";
                                    }
                                    else
                                    {
                                        b[i].Text = "Edit Rate";
                                    }
                                    b[i].Click += new EventHandler(rate_Click);
                                }
                                else if (dt1.Rows[i].ItemArray[3].ToString() == "delivered")
                                {
                                    b[i].Text = "Return";
                                    b[i].Click += new EventHandler(btnreturn_Click);
                                }
                                else
                                {
                                    b[i].Text = "Cancel";
                                    b[i].Attributes.Add("qty", dt1.Rows[i].ItemArray[7].ToString());
                                    b[i].OnClientClick = "return Confirm()";
                                    b[i].Click += new EventHandler(btncancel_Click);
                                }
                                if (dt1.Rows[i].ItemArray[3].ToString() == "cancelled")
                                {
                                    b[i].Enabled = false;
                                    b[i].Text = "Cancelled";
                                }
                                if (dt1.Rows[i].ItemArray[3].ToString().Substring(0, 6) == "return")
                                {
                                    b[i].Enabled = false;
                                    b[i].Text = "Retun Request Received";
                                }
                                tc1[j].Controls.Add(b[i]);
                            }
                            else
                            {
                                tc1[j].Text = dt1.Rows[i].ItemArray[loop].ToString().ToUpper();
                                loop++;
                            }
                            tr1[i].Controls.Add(tc1[j]);
                        }
                        //ordertbl.Controls.Add(tr1[i]);
                    }
                }
                else
                {
                    //ordertbl.Visible = false;
                }
            }
            c.cmd.CommandText = "SELECT * FROM cart WHERE (cid = '" + Session["cid"].ToString() + "')";
            adp.SelectCommand = c.cmd;
            dt3.Clear();
            adp.Fill(dt3);
            if (dt3.Rows.Count > 0)
            {
                tot = 0;
                //lblitemcount.Text = dt3.Rows.Count.ToString();
                for (int k = 0; k < dt3.Rows.Count; k++)
                {
                    tot += Convert.ToInt64(dt3.Rows[k].ItemArray[4]);
                }
                //lblamt.Text = "RS:" + tot;
            }
            else
            {
                //lblitemcount.Text = "0";
                //lblamt.Text = "0";
            }
            //lblpurchaseitemcount.Text = qty.ToString();
            //lblpurchaseamt.Text = total.ToString();
            // }
            //catch (NullReferenceException)
            //  {

            //      Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script> message('Please Login First')</script>");
            //      Session["link"] = "BuyerProfile.aspx";
            //      Response.AddHeader("REFRESH", "3;URL=loginform.aspx?val=login");
            //  }
            //  catch (Exception)
            //  {
            //      throw;
            //  }
        }
    }

    void view_cats(object sender, EventArgs e)
    {
        HtmlAnchor a = (HtmlAnchor)sender;
        c.cmd.CommandText = "select * from product where category='" + a.Attributes["cat_name"].ToString() + "'";
        adp.SelectCommand = c.cmd;
        dt5.Clear();
        adp.Fill(dt5);
        Session["dt"] = dt5;
        Session["dt1"] = dt5;

        Response.Redirect("ProductList.aspx");
    }
    protected void rate_Click(object sender, EventArgs e)
    {
        System.Web.UI.WebControls.Button b = (System.Web.UI.WebControls.Button)sender;
        Session["product_id"] = b.Attributes["product_id"].ToString();
        Session["order_id"] = b.Attributes["order_id"].ToString();
        if (b.Text == "Edit Rate")
        {
            Response.Redirect("Rate.aspx?action=edit");
        }
        else
        {
            Response.Redirect("Rate.aspx");
        }
    }
    protected void track_Click(object sender, EventArgs e)
    {
        System.Web.UI.WebControls.Button b = (System.Web.UI.WebControls.Button)sender;
        Session["product_id"] = b.Attributes["product_id"].ToString();
        Session["order_id"] = b.Attributes["order_id"].ToString();
        Response.Redirect("Track.aspx");
    }
    protected void lnkaddress_Click(object sender, EventArgs e)
    {
        Response.Redirect("Address.aspx?user=buyer");
    }
    protected void btninvoice_Click(object sender, EventArgs e)
    {
        System.Web.UI.WebControls.Button b = (System.Web.UI.WebControls.Button)sender;
        Session["order_id"] = b.Attributes["order_id"].ToString();
        Session["product_id"] = b.Attributes["product_id"].ToString();
        Response.Redirect("Bill.aspx");
    }
    protected void btnreturn_Click(object sender, EventArgs e)
    {
        System.Web.UI.WebControls.Button b = (System.Web.UI.WebControls.Button)sender;
        Session["order_id"] = b.Attributes["order_id"];
        Session["product_id"] = b.Attributes["product_id"].ToString();
        Response.Redirect("ReturnProduct.aspx");
    }

    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        //c.cmd.CommandText = "select * from product where category='Bed Room'";

        //adp.SelectCommand = c.cmd;
        //dt9.Clear();
        //adp.Fill(dt9);
        //Session["dt"] = dt9;
        //Session["dt1"] = dt9;
        Response.Redirect("~/Cart.aspx");

    }

    protected void user1_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }

    protected void user2_Click(object sender, EventArgs e)
    {
        Response.Redirect("loginform.aspx");
    }
    //protected void btnsearch_Click2(object sender, ImageClickEventArgs e)
    //{

    //    if (ddcatlist.SelectedItem.Text.ToString() == "All")
    //    {
    //        c.cmd.CommandText = "select * from product where keyword like'%" + txtsearch.Text.ToString() + "%'";
    //    }
    //    else
    //    {
    //        c.cmd.CommandText = "select * from product where keyword like'%" + txtsearch.Text.ToString() + "%' and category='" + ddcatlist.SelectedItem.Text.ToString() + "'";
    //    }
    //    adp.SelectCommand = c.cmd;
    //    dt4.Clear();
    //    adp.Fill(dt4);
    //    Session["dt"] = dt4;
    //    Session["dt1"] = dt4;
    //    Response.Redirect("ProductList.aspx");
    //}
    protected void btncancel_Click(object sender, EventArgs e)
    {
        DataTable tempdt = new DataTable();
        System.Web.UI.WebControls.Button b = (System.Web.UI.WebControls.Button)sender;
        c.cmd.CommandText = "select check3,order_detail.total,log_id from order_detail,order where order.order_id=order_detail.order_id and check3 is not null and (order_detail.order_id = " + Convert.ToInt64(b.Attributes["order_id"]) + ") AND (product_id = '" + b.Attributes["product_id"].ToString() + "')";
        adp.SelectCommand = c.cmd;
        tempdt.Clear();
        adp.Fill(tempdt);
        if (tempdt.Rows.Count > 0)
        {
            c.cmd.CommandText = "insert into logistic_pay(log_id,pay,remaining,date) values(" + Convert.ToInt64(tempdt.Rows[0].ItemArray[2]) + "," + Convert.ToDecimal(((Convert.ToDouble(tempdt.Rows[0].ItemArray[1]) * .12) * .1) / 2) + "," + Convert.ToDecimal(((Convert.ToDouble(tempdt.Rows[0].ItemArray[1]) * .12) * .1) / 2) + ",@date)";
            c.cmd.Parameters.Clear();
            c.cmd.Parameters.Add("@date", SqlDbType.DateTime).Value = DateTime.Now;
            c.cmd.ExecuteNonQuery();
        }
        c.cmd.CommandText = "UPDATE order_detail SET status = 'cancelled'WHERE (order_id = " + Convert.ToInt64(b.Attributes["order_id"]) + ") AND (product_id = '" + b.Attributes["product_id"].ToString() + "')";
        c.cmd.ExecuteNonQuery();
        c.cmd.CommandText = "update product set qty=qty+" + Convert.ToInt16(b.Attributes["qty"]) + "where product_id='" + b.Attributes["product_id"].ToString() + "'";
        c.cmd.ExecuteNonQuery();
        Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script> message('Order Cancelled')</script>");
    }
    protected void logout_Click(object sender, EventArgs e)
    {

        Session["cid"] = null;
        Response.Redirect("Home.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {


        Response.Redirect("BuyerProfile.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {

        Response.Redirect("Address.aspx");

    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {


        Response.Redirect("orderss.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string temps, fileName, path3 = "";
        int temp, tmp, length = 0;
        DateTime date = new DateTime();
        date = DateTime.Now;
        string cidd = "";
       cidd = Convert.ToString(Session["cid"]);

         try
            {

                string physical, path, p1;

                    c.cmd.CommandText = "select img3 from cust where cid='" + Session["cid"].ToString() + "'";
                    adp.SelectCommand = c.cmd;
                    dt3.Clear();
                    adp.Fill(dt3);
                    Session["img"] = dt3.Rows[0].ItemArray[0].ToString();
                    if (Session["img"] == null)
                    {
                        if (dt3.Rows.Count > 0)
                        {
                            physical = Server.MapPath("~/");

                            path = dt3.Rows[0].ItemArray[0].ToString();
                            path = path.Substring(2, path.Length - 2);
                            p1 = physical + path;

                            if (img3.HasFile)
                            {
                                fileName = Path.GetFileName(img3.PostedFile.FileName);
                                img3.PostedFile.SaveAs(Server.MapPath("~/products/") + fileName);
                                path3 = "~/products/" + fileName;

                                c.cmd.CommandText = "Update cust set img3='" + path3 + "' where cid='" + Session["cid"].ToString() + "'";
                                c.cmd.ExecuteNonQuery();
                                Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script> alert('Image uploaded')</script>");
                                c.cmd.CommandText = "select img3 from cust where cid='" + Session["cid"].ToString() + "'";
                                adp.SelectCommand = c.cmd;
                                dt5.Clear();
                                adp.Fill(dt5);
                                if (dt5.Rows.Count > 0)
                                {
                                    i1.ImageUrl = Convert.ToString(dt5.Rows[0].ItemArray[0]);
                                }
                                Response.Redirect("~/BuyerProfile.aspx");
                            }
                            else
                            {
                                MessageBox.Show("Choose image");
                                Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script> alert('Plzz choose image!!!')</script>");
                     

                            }
                        }
                    }
                    else
                    {
                        if (img3.HasFile)
                        {
                            fileName = Path.GetFileName(img3.PostedFile.FileName);
                            img3.PostedFile.SaveAs(Server.MapPath("~/products/") + fileName);
                            path3 = "~/products/" + fileName;
                            c.cmd.CommandText = "Update cust set img3='" + path3 + "' where cid='" + Session["cid"].ToString() + "'";

                            //c.cmd.CommandText = "Insert into cust(img3) values('" + path3 + "')";
                            c.cmd.Parameters.Clear();
                            //c.cmd.Parameters.Add("@date", SqlDbType.DateTime).Value = date;
                            c.cmd.ExecuteNonQuery();
                            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script> alert('Image Uploaded!!!')</script>");

                            Response.Redirect("BuyerProfile.aspx");
               
                        }
                        else
                        {
                          
                            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script> alert('Plzz choose image!!!')</script>");
                        
                        }
                           }

                }
       

            catch (SqlException ex)
            {
                if (ex.Number == 2627)
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script> alert('OOOps!! Something went Wrong!! Try again...')</script>");
                    Response.AddHeader("REFRESH", "3;URL=Home.aspx");
                }
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                c.cnn.Close();
            }

        
    }

    protected void btnsearch_Click2(object sender, ImageClickEventArgs e)
    {

        if (ddcatlist.SelectedItem.Text.ToString() == "All")
        {
            c.cmd.CommandText = "select * from product where keyword like'%" + txtsearch.Text.ToString() + "%'";
        }
        else
        {
            c.cmd.CommandText = "select * from product where keyword like'%" + txtsearch.Text.ToString() + "%' and category='" + ddcatlist.SelectedItem.Text.ToString() + "'";
        }
        adp.SelectCommand = c.cmd;
        dt8.Clear();
        adp.Fill(dt8);
        Session["dt"] = dt8;
        Session["dt1"] = dt8;
        Response.Redirect("ProductList.aspx");
    }


}


