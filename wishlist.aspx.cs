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

public partial class wishlist : System.Web.UI.Page
{
    connect c = new connect();
    SqlDataAdapter adp = new SqlDataAdapter();
    DataTable dt = new DataTable();
    DataTable dt1 = new DataTable();
    DataTable dt2 = new DataTable();
    DataTable dt3 = new DataTable();
    DataTable dt8 = new DataTable();
    DataTable dt9 = new DataTable();
    int[] arr ={ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };
    long tot = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Session["cid"] == null)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script> message('Please Login First')</script>");
                Session["link"] = "Cart.aspx";
                Response.AddHeader("REFRESH", "3;URL=loginform.aspx");
            }
            else
            {
                user1.Visible = false;
                user2.Visible = false;
                Label3.Text = "Hi ," + Session["cfname"].ToString() + "!";

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
                    for (int i = 1; i < dt2.Rows.Count; i++)
                    {
                        ddcatlist.Items.Add(dt2.Rows[i - 1].ItemArray[0].ToString());
                    }
                }
                //cartheaderdiv.InnerHtml = cartheaderdiv.InnerHtml+"Hello " + Session["cfname"].ToString()+" !!!";
                // cartheaderdiv.Style.Add("color", "black");
                dt.Clear();
                dt = (DataTable)Global.getwish(Session["cid"].ToString());
                if (dt.Rows.Count > 0)
                {
                    HtmlGenericControl[] d = new HtmlGenericControl[dt.Rows.Count];
                    DropDownList[] dd = new DropDownList[dt.Rows.Count];
                    Image[] im = new Image[dt.Rows.Count];
                    System.Web.UI.WebControls.Label[] lblname = new System.Web.UI.WebControls.Label[dt.Rows.Count];
                    System.Web.UI.WebControls.Label[] lblprice = new System.Web.UI.WebControls.Label[dt.Rows.Count];
                    System.Web.UI.WebControls.Button[] btncart = new System.Web.UI.WebControls.Button[dt.Rows.Count];
                    System.Web.UI.WebControls.Button[] btnremove = new System.Web.UI.WebControls.Button[dt.Rows.Count];
                   
                    HtmlAnchor[] a = new HtmlAnchor[dt.Rows.Count];
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        d[i] = new HtmlGenericControl("div");
                        dd[i] = new DropDownList();
                        im[i] = new Image();
                        a[i] = new HtmlAnchor();
                        lblname[i] = new System.Web.UI.WebControls.Label();
                        lblname[i].CssClass = "cartname";
                        lblprice[i] = new System.Web.UI.WebControls.Label();
                        lblprice[i].CssClass = "cartprice";
                        btncart[i] = new System.Web.UI.WebControls.Button();
                        btncart[i].CssClass = "addcart";
                        btncart[i].Text = "Add to Cart";
                        btncart[i].ToolTip = "Add to Cart";
                        btncart[i].Click += new EventHandler(add_Click);
                        btnremove[i] = new System.Web.UI.WebControls.Button();
                        btnremove[i].CssClass = "cartremove";
                        btnremove[i].ToolTip = "Remove From Wishlist";
                        btnremove[i].Click += new EventHandler(remove_cart);
                      
                        a[i].Controls.Add(im[i]);
                        a[i].ServerClick += new EventHandler(link_click);
                        d[i].Controls.Add(a[i]);
                        d[i].Controls.Add(lblname[i]);
                        d[i].Controls.Add(lblprice[i]);
                      //  d[i].Controls.Add(dd[i]);
                        d[i].Controls.Add(btncart[i]);
                        d[i].Controls.Add(btnremove[i]);
                    
                        cartcontent.Controls.Add(d[i]);
                        dd[i].Items.Clear();
                        for (int j = 1; j <= 10; j++)
                        {
                            dd[i].Items.Add(j.ToString());
                        }
                        dd[i].ClearSelection();
                        dd[i].CssClass = "cartqty";
                        dd[i].Items.FindByText(dt.Rows[i].ItemArray[3].ToString()).Selected = true;
                        dd[i].SelectedIndexChanged += new EventHandler(update_qty);
                        dd[i].AutoPostBack = true;
                        c.cmd.CommandText = "select name,img1 from product where product_id='" + dt.Rows[i].ItemArray[2].ToString() + "'";
                        adp.SelectCommand = c.cmd;
                        dt1.Clear();
                        adp.Fill(dt1);
                        im[i].ImageUrl = dt1.Rows[0].ItemArray[1].ToString();
                        a[i].Attributes.Add("product_id", dt.Rows[i].ItemArray[2].ToString());
                        lblname[i].Text = dt1.Rows[0].ItemArray[0].ToString();
                        lblname[i].Text = lblname[i].Text.ToUpper();
                        lblprice[i].Text = "RS:" + dt.Rows[i].ItemArray[4].ToString();
                        dd[i].Attributes.Add("product_id", dt.Rows[i].ItemArray[2].ToString());
                        btncart[i].Attributes.Add("product_id", dt.Rows[i].ItemArray[2].ToString());
                        btncart[i].Attributes.Add("lblprice", dt.Rows[i].ItemArray[4].ToString());
         
                        btnremove[i].Attributes.Add("product_id", dt.Rows[i].ItemArray[2].ToString());
                

                    }
                    HtmlGenericControl checkdiv = new HtmlGenericControl("div");
                    System.Web.UI.WebControls.Label lbltot = new System.Web.UI.WebControls.Label();
                
                   
                  
                   
                    
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script> message('No Products Available in your Wishlist')</script>");
                    Response.AddHeader("REFRESH", "3;URL=Home.aspx");
                }
            }
        }
        catch (NullReferenceException)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script> message('Please Login First')</script>");
            Session["link"] = "wishlist.aspx";
            Response.AddHeader("REFRESH", "3;URL=loginform.aspx");
        }
        catch (Exception)
        {
            throw;
        }
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
    }
    protected void update_qty(object sender, EventArgs e)
    {
        DropDownList dd = (DropDownList)sender;
        c.cmd.CommandText = "select price,qty from product where product_id='" + dd.Attributes["product_id"].ToString() + "'";
        adp.SelectCommand = c.cmd;
        dt2.Clear();
        adp.Fill(dt2);
        if (dt2.Rows.Count > 0)
        {
            if (Convert.ToInt16(dd.SelectedItem.ToString()) > Convert.ToInt16(dt2.Rows[0].ItemArray[1].ToString()))
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script> message('Sorry only " + dt2.Rows[0].ItemArray[1].ToString() + " Products Avilable')</script>");
                dd.SelectedIndex = 0;
            }
            long price = Convert.ToInt64(dt2.Rows[0].ItemArray[0]);
            price *= Convert.ToInt64(dd.SelectedItem.ToString());
            c.cmd.CommandText = "update wishlist set qty='" + dd.SelectedItem.ToString() + "', total=" + price + " where product_id='" + dd.Attributes["product_id"].ToString() + "'and cid='" + Session["cid"].ToString() + "' ";
            c.cmd.ExecuteNonQuery();
            //Response.Redirect("Cart.aspx");
            Response.Redirect("wishlist.aspx");
        }
    }
    protected void remove_cart(object sender, EventArgs e)
    {
        System.Web.UI.WebControls.Button btn = (System.Web.UI.WebControls.Button)sender;
        {
            c.cmd.CommandText = "delete from wishlist where product_id='" + btn.Attributes["product_id"].ToString() + "' and cid='" + Session["cid"].ToString() + "' ";
            c.cmd.ExecuteNonQuery();
            Response.Redirect("wishlist.aspx");
        }
    }

    protected void add_Click(object sender, EventArgs e)
    {
        try
        {

        System.Web.UI.WebControls.Button btn = (System.Web.UI.WebControls.Button)sender;
     
           
            Session["product_id"] = btn.Attributes["product_id"].ToString();
            if (Session["cid"].ToString() == "")
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script> message('Please login first')</script>");
                Session["link"] = "ProductList.aspx";
                Response.Redirect("~/loginform.aspx");
            }
            else
            {
                c = new connect();
                c.cmd.CommandText = "select product_id from cart where product_id='" + Session["product_id"].ToString() + "' and cid='" + Session["cid"].ToString() + "'";
                adp.SelectCommand = c.cmd;
                adp.Fill(dt9);
                if (dt9.Rows.Count > 0)
                {
                    //Response.Write("<script>alert('Product already exists in Cart')</script>");
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script> message('Product exists in Cart')</script>");
                    //nxtpage_click(lnkbtn[active_page - 1], EventArgs.Empty);
                }
                else
                {
                    string cart_id = "CART", temp = Session["cid"].ToString().Substring(3, Session["cid"].ToString().Length - 3);
                    cart_id += temp;
                    c.cmd.CommandText = "insert into cart(cart_id,cid,product_id,qty,total) values('" + cart_id + "','" + Session["cid"].ToString() + "','" + Session["product_id"].ToString() + "'," + 1 + "," + Convert.ToInt64(btn.Attributes["lblprice"]) + ")";
                    c.cmd.ExecuteNonQuery();
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script> message('Product Successfully Added to Cart')</script>");
                  //  nxtpage_click(lnkbtn[active_page - 1], EventArgs.Empty);
                    c.cmd.CommandText = "delete from wishlist where product_id='" + btn.Attributes["product_id"].ToString() + "' and cid='" + Session["cid"].ToString() + "' ";
                    c.cmd.ExecuteNonQuery();
                    Response.Redirect("wishlist.aspx");
                }
            }
        }
        catch (NullReferenceException)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script> message('you must login first')</script>");
            Session["link"] = "ProductList.aspx";
            Response.AddHeader("REFRESH", "3;URL=loginform.aspx?val=login");
        }
        catch (Exception)
        {
            throw;
        }

    }
    protected void link_click(object sender, EventArgs e)
    {
        HtmlAnchor a = (HtmlAnchor)sender;
        Session["product_id"] = a.Attributes["product_id"].ToString();
        Response.Redirect("View.aspx");
    }
    protected void btncheckout_Click(object sender, EventArgs e)
    {
        Response.Redirect("Checkout.aspx");
    }
    protected void logout_Click(object sender, EventArgs e)
    {

        Session["cid"] = null;
        userlogin.Visible = false;
        user1.Visible = true;
        user2.Visible = true;
        Response.Redirect("Home.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
    protected void user1_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }

    protected void user2_Click(object sender, EventArgs e)
    {
        Response.Redirect("loginform.aspx");
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
    protected void btnsearch_Click(object sender, ImageClickEventArgs e)
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
