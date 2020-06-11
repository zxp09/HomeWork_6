using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class faculty : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        ListView1.DataSourceID = "SqlDataSource2";
        ListView1.DataBind();

    }

    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }

    //protected void ListView1_ItemDeleted(object sender, ListViewDeletedEventArgs e)
    //{
    //    String sqlstrfac;
    //    String sqlstroffer;
    //   // sqlstroffer = "Update offering,faculty Set offering.FacSSN=null where Faculty.facSSN=" + e.Values.ToString().Trim()+ " and Faculty.facSSN=offering.FacSSN";
    //    sqlstrfac = "delete from faculty where facSSN='" + e.Values.ToString().Trim() + "'";
    //   // ExecuteDB(sqlstroffer);
    //    int ret = ExecuteDB(sqlstrfac);
    //    //ExecuteDB(sqlstroffer);
    //    if (ret == 0)
    //    {
    //        HttpContext.Current.Response.Write("<script>alert('Fail to delete data, and pleaserecheck or contact system developer.')</script>");
    //    }
    //    else
    //    {

    //        HttpContext.Current.Response.Write("<script>alert('Deleting datasuccessfully!')</script>");
    //    }
    //}

    //private int ExecuteDB(string sqlstr)
    //{
    //    OleDbConnection con = null;
    //    OleDbCommand cmd = null;
    //    DataSet datasetF = new DataSet();
    //    con = new OleDbConnection();
    //    con.ConnectionString = "Provider = Microsoft.Jet.OLEDB.4.0;Data Source=" + Server.MapPath("\\App_Data\\UniversityDB.mdb");
    //    con.Open();
    //    cmd = new OleDbCommand(sqlstr,con);
    //    int ret = cmd.ExecuteNonQuery();
    //    con.Close();
    //    return ret;
    //}
}