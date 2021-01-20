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

public partial class viewdetail : System.Web.UI.Page
{
    connect c;
    SqlDataAdapter adp = new SqlDataAdapter();
    //DataSet ds;
    DataTable dt = new DataTable();
    DataTable dt1 = new DataTable();
    DataTable dt2 = new DataTable();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        //connect c = new connect();
        //c.cmd.CommandText = "SELECT qty FROM item WHERE (qty= '" + Session["qty"].ToString() + "')";
        //adp.SelectCommand = c.cmd;
        //String quantity;
        //quantity = ((System.Web.UI.WebControls.TextBox)e.Item.FindControl("TextBox1")).Text;
        //if (quantity> Session["qty"])
        //{
        //    MessageBox.Show("Stock is unavailable"); 
        //}
    }
   
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        c = new connect();
        if (e.CommandName =="buy")
        {
            string i = ((System.Web.UI.WebControls.Label)e.Item.FindControl("Label3")).Text;
            string n = ((System.Web.UI.WebControls.Label)e.Item.FindControl("Label5")).Text;
            string img = ((System.Web.UI.WebControls.Image)e.Item.FindControl("Image1")).ImageUrl;
            string p = ((System.Web.UI.WebControls.Label)e.Item.FindControl("Label1")).Text;
            string q = ((System.Web.UI.WebControls.TextBox)e.Item.FindControl("TextBox1")).Text;
            //Session["buynow"] = i;
            int pr, qty, amt;
            pr = Convert.ToInt16(p);
            qty = Convert.ToInt16(q);
            amt = pr * qty;
            c.cmd .CommandText="insert into buynow values(@item_id,@cust_id,@name,@image,@price,@qty,@totalprice)";
            c.cmd.Parameters.Add("@item_id", SqlDbType.NVarChar).Value = i;
            c.cmd.Parameters.Add("@cust_id", SqlDbType.NVarChar).Value = Session["cust_id"];
            c.cmd.Parameters.Add("@name", SqlDbType.NVarChar).Value = n;
            c.cmd.Parameters.Add("@image", SqlDbType.NVarChar).Value = img;
            c.cmd.Parameters.Add("@price", SqlDbType.BigInt).Value = p;
            c.cmd.Parameters.Add("@qty", SqlDbType.Int).Value = q;
            c.cmd.Parameters.Add("@totalprice", SqlDbType.BigInt).Value = amt;

            c.cmd.ExecuteNonQuery();

            Response.Redirect("ccart.aspx?id=" + e.CommandArgument.ToString());
        }
    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
   
}
