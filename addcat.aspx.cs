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

public partial class addcat : System.Web.UI.Page
{
    connect c;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    //protected void Button1_Click(object sender, EventArgs e)
    //{

    //}
    protected void btnadd_click(object sender, EventArgs e)
    {
        try
        {
            c = new connect();
            c.cmd.CommandText = "insert into addCategory values(@catid,@catname,@subcat)";
            c.cmd.Parameters.Add("@catid", SqlDbType.Int).Value = Convert.ToInt16(TextBox1.Text);
            c.cmd.Parameters.Add("@catname", SqlDbType.NVarChar).Value = TextBox2.Text;
            c.cmd.Parameters.Add("@subcat", SqlDbType.NVarChar).Value = txtsubcat.Text;
            c.cmd.ExecuteNonQuery();
            Page.ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "<script>alert('Category added')</script>");


        }
        catch (Exception)
        {
            throw;
        }
    }
}
