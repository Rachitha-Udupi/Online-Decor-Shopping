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

public partial class vieworder : System.Web.UI.Page
{
    connect c;
    DataSet ds;
    SqlDataAdapter adp = new SqlDataAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        c = new connect();
         c.cmd.CommandText = "select * from orderdetail where cust_id='" + Session["cust_id"] + "'";
        DataSet ds = new DataSet();
        adp.SelectCommand = c.cmd;
       adp.Fill(ds, "order");
        //MessageBox.Show(ds.Tables["cart"].Rows.Count.ToString());

        for (int i = 0; i < ds.Tables["order"].Rows.Count; i++)
        {
            c.cmd.CommandText = "insert into order values(@name,@address,@contact,@item_id,@date,@qty,@price,@image,@total)";
            c.cmd.Parameters.Add("@name", SqlDbType.NVarChar).Value = ds.Tables["order"].Rows[i].ItemArray[0];

            c.cmd.Parameters.Add("@address", SqlDbType.DateTime).Value = DateTime.Now;
            c.cmd.Parameters.Add("@contact", SqlDbType.Int).Value = ds.Tables["order"].Rows[i].ItemArray[1];
            c.cmd.Parameters.Add("@item_id", SqlDbType.BigInt).Value = ds.Tables["order"].Rows[i].ItemArray[2];
            c.cmd.Parameters.Add("@date", SqlDbType.NVarChar).Value = ds.Tables["order"].Rows[i].ItemArray[3];
            c.cmd.Parameters.Add("@qty", SqlDbType.BigInt).Value = ds.Tables["order"].Rows[i].ItemArray[4];
            c.cmd.Parameters.Add("@price", SqlDbType.BigInt).Value = ds.Tables["order"].Rows[i].ItemArray[5];
            c.cmd.Parameters.Add("@image", SqlDbType.BigInt).Value = ds.Tables["order"].Rows[i].ItemArray[6];
            c.cmd.Parameters.Add("@total", SqlDbType.BigInt).Value = ds.Tables["order"].Rows[i].ItemArray[7];

            c.cmd.ExecuteNonQuery();
        }
        MessageBox.Show("inserted");

     // try  
     //  {
     //       c = new connect();
     //     c.cmd.CommandText ="select * from order";

     ////c.cmd.CommandText = "select order.oredr_id,customer.cust_id,item.item_id,order.date,order.qty from order join customer and item on order.cust_id=customer.cust_id and order.item_id=item.item_id;";
     //       ds = new DataSet();
     //       adp.SelectCommand = c.cmd;
     //       adp.Fill(ds,"ord");

     //       if (ds.Tables["ord"].Rows.Count > 0)
     //       {
     //           GridView1.DataSource = ds.Tables["ord"];
     //           GridView1.DataBind();
     //       }
     //       else
     //           MessageBox.Show("NO Records");
     //       Response.Write("</br> <a href='admin.aspx'> click to go back</a>");
     // }
     //catch (Exception )
     //   {
     //       throw;
     //   }
     //   finally
     // {
     //      c.cnn.Close();
     //   }
               
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        
        if (e.CommandName == "sendtologistic")
        {
            string n = ((System.Web.UI.WebControls.Label)e.Item.FindControl("Label4")).Text;
            string a = ((System.Web.UI.WebControls.Label)e.Item.FindControl("Label5")).Text;

            string cnt = ((System.Web.UI.WebControls.Label)e.Item.FindControl("Label6")).Text;
            string i = ((System.Web.UI.WebControls.Label)e.Item.FindControl("Label7")).Text;
            string d = ((System.Web.UI.WebControls.Label)e.Item.FindControl("Label8")).Text;
            string q = ((System.Web.UI.WebControls.Label)e.Item.FindControl("Label9")).Text;
           // string img = ((System.Web.UI.WebControls.Image)e.Item.FindControl("Image1")).ImageUrl;
            string p = ((System.Web.UI.WebControls.Label)e.Item.FindControl("Label10")).Text;

            string img = ((System.Web.UI.WebControls.Image)e.Item.FindControl("Image1")).ImageUrl;
            string t = ((System.Web.UI.WebControls.Label)e.Item.FindControl("Label11")).Text;
            c = new connect();
           
            c.cmd.CommandText = "insert into logisticdetail values(@name,@address,@contact,@item_id,@date,@qty,@price,@image,@total)";
           c.cmd. Parameters.Clear();
           
            //   c.cmd.Parameters.Add("@cart_id", SqlDbType.Int).Value = count;
            c.cmd.Parameters.Add("@name", SqlDbType.NVarChar).Value = n;
            c.cmd.Parameters.Add("@address", SqlDbType.NVarChar).Value = a;
            c.cmd.Parameters.Add("@contact", SqlDbType.BigInt).Value = cnt;
            c.cmd.Parameters.Add("@item_id", SqlDbType.NVarChar).Value = i;
            c.cmd.Parameters.Add("@date", SqlDbType.DateTime).Value = DateTime.Now;
            c.cmd.Parameters.Add("@qty", SqlDbType.Int).Value = q;
            // c.cmd.Parameters.Add("@totalprice", SqlDbType.BigInt).Value = Convert.ToInt16((Convert.ToInt16(p)) *(Convert.ToInt16(q)));
            c.cmd.Parameters.Add("@price", SqlDbType.BigInt).Value = p;
            c.cmd.Parameters.Add("@image", SqlDbType.NVarChar).Value = img;
            c.cmd.Parameters.Add("@total", SqlDbType.BigInt).Value = t;

            c.cmd.ExecuteNonQuery();
            MessageBox.Show("Inserted");
            Response.Redirect("~/logisticpage.aspx");
        }
    }
   
}
