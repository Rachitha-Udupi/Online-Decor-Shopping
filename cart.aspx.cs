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

public partial class cart : System.Web.UI.Page
{
    connect c;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

   
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "delete")
        {
            c = new connect();

          
            //c.cmd.CommandText = "delete from cart where item_id=" + e.CommandArgument .ToString ()+ "";
            c.cmd.CommandText = "delete from cart where cust_id='" + Session["cust_id"] + "' and item_id='" +e.CommandArgument .ToString ()+ "'";
            c.cmd.ExecuteNonQuery();
            MessageBox.Show("deleted");
            DataList1.DataBind();

        }
        else if (e.CommandName == "edit")
        {

            c = new connect();

            //string i = ((System.Web.UI.WebControls.Label)e.Item.FindControl("Label1")).Text;
            string p = ((System.Web.UI.WebControls.Label)e.Item.FindControl("Label3")).Text;

            //string n = ((System.Web.UI.WebControls.Label)e.Item.FindControl("Label2")).Text;
            //string img = ((System.Web.UI.WebControls.Image)e.Item.FindControl("Image1")).ImageUrl;
            string q = ((System.Web.UI.WebControls.TextBox)e.Item.FindControl("TextBox1")).Text;
      
            // int count;
            //  c.cmd.CommandText = "select count(*) from cart";
            // count = Convert.ToInt16(c.cmd.ExecuteScalar()) + 1;
         //   c.cmd.CommandText = "insert into cart values(@item_id,@cust_id,@item_name,@price,@image,@qty)";
            c.cmd.CommandText = "update cart set qty=@qty,totalprice=@price*@qty where cust_id='" + Session["cust_id"] + "' and item_id='" + e.CommandArgument.ToString() + "'";
            c.cmd.Parameters.Clear();
            //c.cmd.Parameters.Add("@item_id", SqlDbType.Int).Value = i;
            //c.cmd.Parameters.Add("@cust_id", SqlDbType.NVarChar).Value = Session["cust_id"];
            //c.cmd.Parameters.Add("@item_name", SqlDbType.NVarChar).Value = n;
            c.cmd.Parameters.Add("@price", SqlDbType.BigInt).Value = p;
            //c.cmd.Parameters.Add("@image", SqlDbType.NVarChar).Value = img;
            c.cmd.Parameters.Add("@qty", SqlDbType.Int).Value = q;
            
           
            c.cmd.ExecuteNonQuery();
            MessageBox.Show("updated");

            DataList1.DataBind();
        }
        else if(e.CommandName =="checkout")
        {
            Response .Redirect ("~/checkouts.aspx");
        }
    }

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}
