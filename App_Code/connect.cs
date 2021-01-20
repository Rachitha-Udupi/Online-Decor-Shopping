using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

/// <summary>
/// Summary description for connect
/// </summary>
public class connect
{
    public SqlCommand cmd = new SqlCommand();
    public SqlConnection cnn = new SqlConnection();

    public connect()
    {
        //
        // TODO: Add constructor logic here
        //
        cnn.ConnectionString = "Data source=USER-PC;Initial Catalog=bgroup28;Integrated Security=true";
        cnn.Open();
        cmd.Connection = cnn;


    }
}